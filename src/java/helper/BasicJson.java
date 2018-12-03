/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import org.json.JSONObject;

/**
 *
 * @author Lenovo
 */
public class BasicJson {

    public BasicJson() {
        
    }

    public JSONObject getBasicJson(boolean isValid, String msg) {
        JSONObject json = new JSONObject();
        json.put("isValid", isValid);

        if (isValid) {
            json.put("msg", msg);
        } else {
            json.put("msg", "<b style='color:red'>" + msg + "</b>");
        }

        return json;
    }
}
