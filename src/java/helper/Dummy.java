/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

/**
 *
 * @author Lenovo
 */
public class Dummy {

    public static String getMonthNumber(String monthName, boolean isTwoDigit) {
        String monthNo = "0";

        if (monthName.equalsIgnoreCase("Januari") || monthName.equalsIgnoreCase("Jan")) {
            monthNo = "1";
        } else if (monthName.equalsIgnoreCase("februari") || monthName.equalsIgnoreCase("feb")) {
            monthNo = "2";
        } else if (monthName.equalsIgnoreCase("maret") || monthName.equalsIgnoreCase("mar")) {
            monthNo = "3";
        } else if (monthName.equalsIgnoreCase("april") || monthName.equalsIgnoreCase("apr")) {
            monthNo = "4";
        } else if (monthName.equalsIgnoreCase("mei")) {
            monthNo = "5";
        } else if (monthName.equalsIgnoreCase("juni") || monthName.equalsIgnoreCase("jun")) {
            monthNo = "6";
        } else if (monthName.equalsIgnoreCase("juli") || monthName.equalsIgnoreCase("jul")) {
            monthNo = "7";
        } else if (monthName.equalsIgnoreCase("agustus") || monthName.equalsIgnoreCase("agu")) {
            monthNo = "8";
        } else if (monthName.equalsIgnoreCase("september") || monthName.equalsIgnoreCase("sep")) {
            monthNo = "9";
        } else if (monthName.equalsIgnoreCase("oktober") || monthName.equalsIgnoreCase("okt")) {
            monthNo = "10";
        } else if (monthName.equalsIgnoreCase("november") || monthName.equalsIgnoreCase("nov")) {
            monthNo = "11";
        } else if (monthName.equalsIgnoreCase("desember") || monthName.equalsIgnoreCase("des")) {
            monthNo = "12";
        }

        if (isTwoDigit && monthNo.length() < 2) {
            monthNo = "0" + monthNo;
        }

        return monthNo;
    }

    public static String getddmmyyyy(String mmyyyy) {
        String[] mm_yyyy = mmyyyy.split(" ");
        return mm_yyyy[1] + "-" + mm_yyyy[0] + "-01";
    }
    
}
