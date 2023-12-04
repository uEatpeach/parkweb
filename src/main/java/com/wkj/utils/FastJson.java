package com.wkj.utils;

import com.alibaba.fastjson.JSONObject;

public class FastJson {

    public static String getJsonString(String str) {
        JSONObject jsonObject = JSONObject.parseObject(str);
        String r = jsonObject.getString("words_result");
        JSONObject jsonObject1 = JSONObject.parseObject(r);
        return jsonObject1.getString("number");


        /*JSONObject jsonObject = JSONObject.parseObject(str);
        JSONArray jsonArray = jsonObject.getJSONArray("words_result");
        JSONObject obj = jsonArray.getJSONObject(0);
        String words =obj.getString("words");
        return words;*/
    }
}
