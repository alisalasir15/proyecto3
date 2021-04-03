import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/**
 *
 * @author Javier Terán González 02/04/2021
 */
public class LeerCSV {
    public static void main(String[] args) {
        BufferedReader br = null;
        try {
            br =new BufferedReader(new FileReader("./Temp/Java/01LeerCSV.csv"));
            String linea = br.readLine();
            while (null!=linea) {
                String [] columnas = linea.split(";");
                //System.out.println(Arrays.toString(columnas));    
                System.out.println(columnas[0] + " - " + columnas[4] + " - " + columnas[5]);            
                linea = br.readLine();
            }  
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        } finally {
            if (null!=br) {
                try {
                    br.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}