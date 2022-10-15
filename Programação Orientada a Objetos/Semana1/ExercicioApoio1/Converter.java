public class Converter{
    public double cToF(double temperatura){
        return ((temperatura/5)*9)+32;
    }
    public double fToC(double temperatura){
        return ((temperatura-32)/9)*5;
    }
}