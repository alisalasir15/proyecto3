import java.io.BufferedReader;
import java.io.FileReader;

public class LeerCSV {
    public static void main(String[] args) throws Exception {
        BufferedReader br=null;
        try {
            br = new BufferedReader(new FileReader("./Java/01LeerCSV.csv"));
            String linea = br.readLine();
            while (null!=linea) {
                String [] columnas = linea.split(";");
                System.out.println(columnas[0] + " - " + columnas[4]+ " - " + columnas[5]);
                linea = br.readLine();
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }
}
