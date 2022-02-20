using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Buffers;
using System.Text.Json;
using System.Net;
using System.Text.Encodings.Web;
using System.Text.Unicode;
using ApiService.Context;
using ApiService.Model;
using System.IO;

namespace ApiService
{
    class Program
    {
        static void Main()
        {
            HttpListener server = new HttpListener();
            server.Prefixes.Add("http://localhost:32145/");

            JsonSerializerOptions options = new JsonSerializerOptions() { Encoder = JavaScriptEncoder.Create(UnicodeRanges.All) };
            server.Start();

            while(true)
            {
                HttpListenerContext context = server.GetContext();
                if(context.Request.HttpMethod == "GET")
                {
                    try
                    {
                        if (context.Request.RawUrl == "/api/client")
                        {
                            var clientList = Data.sb.Client.ToList();
                            string response = JsonSerializer.Serialize(Data.sb.Client.ToList().ConvertAll(c => new ResponseClient(c)), options);
                            byte[] data = Encoding.UTF8.GetBytes(response);
                            context.Response.ContentType = "application/json;charset=utf-8";
                            using (Stream stream = context.Response.OutputStream)
                            {
                                context.Response.StatusCode = 200;
                                stream.Write(data, 0, data.Length);
                            }
                        }
                        else
                            throw new Exception();
                    }
                    catch
                    {
                        context.Response.StatusCode = 400;
                        context.Response.Close();
                    }
                }
                else if(context.Request.HttpMethod == "POST")
                {
                    try
                    {
                        if (context.Request.RawUrl == "/api/client")
                        {
                            if (context.Request.ContentType == "application/json")
                            {
                                string request = "";
                                byte[] data = new byte[context.Request.ContentLength64];
                                using (Stream stream = context.Request.InputStream)
                                {
                                    stream.Read(data, 0, data.Length);
                                }
                                request = System.Text.UTF8Encoding.UTF8.GetString(data);
                                var clientList = JsonSerializer.Deserialize<List<ResponseClient>>(request);
                                foreach (var client in clientList)
                                {
                                    Client clients = new Client();
                                    clients.ID = client.ID;
                                    clients.LastName = client.LastName;
                                    clients.FirstName = client.FirstName;
                                    clients.Patronymic = client.Patronymic;
                                    clients.IDGender = client.IDGender;
                                    clients.Phone = client.Phone;
                                    clients.Pic = client.Pic;
                                    clients.DateOfBrith = client.DateOfBrith;
                                    clients.Email = client.Email;
                                    clients.DateOfRegistration = client.DateOfRegistration;
                                    Data.sb.Client.Add(clients);
                                }
                                Data.sb.SaveChanges();
                                context.Response.StatusCode = 200;
                                context.Response.Close();
                            }
                            else
                                throw new Exception();
                        }
                        else
                            throw new Exception();

                    }
                    catch
                    {
                        context.Response.StatusCode = 400;
                        context.Response.Close();
                    }
                }
                else
                {
                    try
                    {
                        if (context.Request.HttpMethod == "DELETE")
                        {
                            if (context.Request.QueryString.Count == 1)
                            {
                                if (context.Request.QueryString.Keys[0] == "id")
                                {
                                    int id = Convert.ToInt32(context.Request.QueryString.Get(0));
                                    var currentClient = Data.sb.Client.FirstOrDefault(c => c.ID == id);
                                    if (currentClient != null)
                                    {
                                        Data.sb.Client.Remove(currentClient);
                                        Data.sb.SaveChanges();
                                        context.Response.StatusCode = (int)HttpStatusCode.OK;
                                        context.Response.Close();
                                    }
                                    else
                                        throw new Exception();
                                }
                                else
                                    throw new Exception();
                            }
                            else
                                throw new Exception();
                        }
                        else
                            throw new Exception();
                    }
                    catch
                    {
                        context.Response.StatusCode = 400;
                        context.Response.Close();
                    }
                }

            }
        }
    }
}
