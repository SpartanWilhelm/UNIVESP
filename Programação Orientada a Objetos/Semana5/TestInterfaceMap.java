package Semana5;

import java.util.HashMap;
import java.util.Map;

public class TestInterfaceMap {
    public static void main(String[] args){
        Map<Integer, String> mapNames = new HashMap<Integer, String>();
        mapNames.put(1, "UNIVESP");
        mapNames.put(2, "USP");
        mapNames.put(3, "UNICAMP");
        mapNames.put(4, "UNESP");

        System.out.println(mapNames);
        System.out.println(mapNames.get(2));

    }
    
}
