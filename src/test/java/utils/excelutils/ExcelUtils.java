package utils.excelutils;//reading value of a particular cell
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;

import com.saf.framework.MyTestNGBaseClass;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel. * ;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
public class ExcelUtils extends MyTestNGBaseClass {

    //method defined for reading a cell
    public String ReadCellData(int vRow, int vColumn) {
        String value = null; //variable for storing the cell value
        Workbook wbook = null; //initialize Workbook null
        try {
            //reading data from a file in the form of bytes
            FileInputStream fis = new FileInputStream("src/test/java/resources/Müşteri Numaraları.xlsx");
            //creates an XSSFWorkbook object by buffering the whole stream into the memory
            wbook = new XSSFWorkbook(fis);
        }
        catch(FileNotFoundException e) {
            e.printStackTrace();
        }
        catch(IOException e1) {
            e1.printStackTrace();
        }
        Sheet sheet = wbook.getSheetAt(0);
        //getting the XSSFSheet object at given index
        Row row = sheet.getRow(vRow);
        //returns the logical row
        Cell cell = row.getCell(vColumn);
        //getting the cell representing the given column
        value = String.valueOf(cell.getNumericCellValue());

        DataFormatter formatter = new DataFormatter();
        value = formatter.formatCellValue(cell);
        return value;
    }

    public String ReadCellDataString(int vRow, int vColumn) {
        String value = null; //variable for storing the cell value
        Workbook wbook = null; //initialize Workbook null
        try {
            //reading data from a file in the form of bytes
            FileInputStream fis = new FileInputStream("src/test/java/resources/Müşteri Numaraları.xlsx");
            //creates an XSSFWorkbook object by buffering the whole stream into the memory
            wbook = new XSSFWorkbook(fis);
        }
        catch(FileNotFoundException e) {
            e.printStackTrace();
        }
        catch(IOException e1) {
            e1.printStackTrace();
        }
        Sheet sheet = wbook.getSheetAt(0);
        //getting the XSSFSheet object at given index
        Row row = sheet.getRow(vRow);
        //returns the logical row
        Cell cell = row.getCell(vColumn);
        //getting the cell representing the given column
        value = cell.getStringCellValue();
        //getting cell value
        return value;
        //returns the cell value
    }

    public String readCellDataFromFile(int vRow, int vColumn, String filename) {
        String value = null; //variable for storing the cell value
        Workbook wbook = null; //initialize Workbook null
        try {
            //reading data from a file in the form of bytes
            FileInputStream fis = new FileInputStream("src/test/java/resources/" + filename);
            //creates an XSSFWorkbook object by buffering the whole stream into the memory
            wbook = new XSSFWorkbook(fis);
        }
        catch(FileNotFoundException e) {
            e.printStackTrace();
        }
        catch(IOException e1) {
            e1.printStackTrace();
        }

        Sheet sheet = wbook.getSheetAt(0);
        //getting the XSSFSheet object at given index
        Row row = sheet.getRow(vRow);
        //returns the logical row
        Cell cell = row.getCell(vColumn);
        //getting the cell representing the given column

        DataFormatter formatter = new DataFormatter();
        value = formatter.formatCellValue(cell);
        return value;
    }


    public String getVKNFromExcelFile(String filename) {
        String value = null, VKN, isUsed; //variable for storing the cell value
        Workbook wbook = null; //initialize Workbook null
        try {
            //reading data from a file in the form of bytes
            FileInputStream fis = new FileInputStream("src/test/java/resources/" + filename);
            //creates an XSSFWorkbook object by buffering the whole stream into the memory
            wbook = new XSSFWorkbook(fis);
        }
        catch(FileNotFoundException e) { e.printStackTrace(); }
        catch(IOException e1) { e1.printStackTrace(); }

        int rowCount = 1;

        while (true) {

            Sheet sheet = wbook.getSheetAt(0); //getting the XSSFSheet object at given index
            Row row = sheet.getRow(rowCount); //returns the logical row
            Cell cellVKN = row.getCell(1); //getting the cell representing the given column
            Cell cellIsUsed = row.getCell(2); //getting the cell representing the given column

            DataFormatter formatter = new DataFormatter();
            VKN = formatter.formatCellValue(cellVKN);
            isUsed =  formatter.formatCellValue(cellIsUsed);

            if (VKN.isEmpty()) break;

            System.out.println( VKN + " - " + isUsed);
            if (isUsed.isEmpty()) break;

            rowCount++;
        }

        return VKN;
    }

    public void setVKNValueIntoExcelFile(String setVKN, String filename) {

        String VKN;
        Workbook wbook = null; //initialize Workbook null
        try {
            //reading data from a file in the form of bytes
            FileInputStream fis = new FileInputStream("src/test/java/resources/" + filename);
            //creates an XSSFWorkbook object by buffering the whole stream into the memory
            wbook = new XSSFWorkbook(fis);

            int rowCount = 1;

            while (true) {

                Sheet sheet = wbook.getSheetAt(0); //getting the XSSFSheet object at given index
                Row row = sheet.getRow(rowCount); //returns the logical row
                Cell cellVKN = row.getCell(1); //getting the cell representing the given column
                Cell cellIsUsed = row.getCell(2); //getting the cell representing the given column

                DataFormatter formatter = new DataFormatter();
                VKN = formatter.formatCellValue(cellVKN);

                if (VKN.isEmpty()) break;

                if (VKN.equalsIgnoreCase(setVKN)) cellIsUsed.setCellValue("Yes");

                rowCount++;
            }

            //Close input stream
            fis.close();

            //Crating output stream and writing the updated workbook
            FileOutputStream os = new FileOutputStream("src/test/java/resources/" + filename);
            wbook.write(os);

            //Close the workbook and output stream
            wbook.close();
            os.close();

            System.out.println("Excel file has been updated successfully.");

        }
        catch(FileNotFoundException e) { e.printStackTrace(); }
        catch(IOException e1) { e1.printStackTrace(); }
    }
}