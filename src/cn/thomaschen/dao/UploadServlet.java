package cn.thomaschen.dao;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {

    /**
     * The doPost method of the servlet. <br>
     *
     * This method is called when a form has its tag value method equals to post.
     * 
     * @param request the request send by the client to the server
     * @param response the response send by the server to the client
     * @throws ServletException if an error occurred
     * @throws IOException if an error occurred
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        //�õ��ϴ��ļ��ı���Ŀ¼�����ϴ����ļ�����webRootĿ¼�£�����һ��Ϊ�˰�ȫ����WEB-INFĿ¼�£����������ֱ�ӷ��ʣ���֤�ϴ��İ�ȫ��
        String path = this.getServletContext().getRealPath("/img/Upload");
        System.out.print(path);
        File file = new File(path);
        
        //�ж��ϴ��ļ��ı���Ŀ¼�Ƿ����
        if(!file.exists() && !file.isDirectory()){
            System.out.println(path + "Ŀ¼�����ڣ���Ҫ������");
            //����Ŀ¼
            file.mkdir();
        }
        //��Ϣ��ʾ
        String message = "";
        try{
            //ʹ��Apache�ļ��ϴ���������ļ��ϴ����裺
            //1.����һ��DiskFileItemFactory����
            DiskFileItemFactory factory = new DiskFileItemFactory();
            //2.����һ���ļ��ϴ�������
            ServletFileUpload upload = new ServletFileUpload(factory);
            //�����������
            upload.setHeaderEncoding("UTF-8");
            //3.�ж��ύ��������ͨ�������ݻ��Ǵ��ļ��ϴ��ı�
            if(!upload.isMultipartContent(request)){
                //����Ǳ�������ͨ��,���մ�ͳ��ʽ��ȡ����
                return ;                
            }
            //4.ʹ��ServletFileUpload�����������ϴ����ݣ�����������ص���һ��List<FileItem>���ϣ�ÿһ��FileItem��Ӧһ��Form����������
            List<FileItem> list = upload.parseRequest(request);
            for(FileItem item : list){
                //���fileItem�з�װ������ͨ�����������
                if(item.isFormField()){
                    //��ȡ�ֶ�����
                    String name = item.getFieldName();
                    //�����ͨ��������������������
                    String value = item.getString("UTF-8");//value = new String(value.getBytes("iso8859-1"),"UTF-8");
                    System.out.println(name + " = " + value);
                }else{    //��������ύ�����ϴ��ļ�
                    //����ϴ����ļ�����
                    String filename = item.getName();
                    System.out.println(filename);
                    if(filename == null || filename.trim().equals(" ")){
                        continue;
                    }
                    //ע�⣺��ͬ��������ύ���ļ������ǲ�һ���ģ���Щ������ύ���ļ������·�����硰D:\\project\WebRoot\hello.jsp������һЩ�ǵ������ļ�����hello.jsp
                    //ȥ����ȡ���ļ����е�·�����������������ļ���
                    filename = filename.substring(filename.lastIndexOf("\\") + 1);
                    //��ȡitem�е��ϴ��ļ���������
                    InputStream in = item.getInputStream();
                    //����һ���ļ�������
                    FileOutputStream out = new FileOutputStream(path + "\\" + filename);
                    //����һ��������
                    byte buffer[] = new byte[1024];
                    //�ж��������е������Ƿ��Ѿ���ȡ��ϵı�־λ
                    int len = 0;
                    //ѭ�������������뵽���������У���len = in.read(buffer)>0���ͱ�ʾin���滹�����ݴ���
                    while((len = in.read(buffer)) > 0){
                        //ʹ��FileOutputStream�������������������д�뵽ָ����Ŀ¼��path+"\\"+filename������
                        out.write(buffer, 0, len);
                    }
                    //�ر�������
                    in.close();
                    //�ر������
                    out.close();
                    //ɾ�������ļ��ϴ����ɵ���ʱ�ļ�
                    item.delete();
                    message = "�ļ��ϴ��ɹ�!";
                    
                    
                }
            }
            
        }catch(Exception e){
            message = "�ļ��ϴ�ʧ�ܣ�";
            e.printStackTrace();
        }
        
        request.setAttribute(message, message);
        request.getRequestDispatcher("main.jsp").forward(request, response);
        
    }

}