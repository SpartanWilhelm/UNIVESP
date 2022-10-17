package Semana2;

public class Bola{
    private String material;    
    private String cor;    
    private int tamanho;    
    private boolean cheia;
    
    public Bola(){
        this.material = ""; 
        this.cor = "s/cor"; 
        this.tamanho = 0; 
        this.cheia = false;
    }
    public Bola(String material, String cor, int tamanho, boolean cheia){
        this.material = material;
        this.cor = cor;
        this.tamanho = tamanho;
        this.cheia = cheia;
    }

    public Bola(String cor, int tamanho){
        this();
        this.cor = cor;
        this.tamanho = tamanho;
    }
    public void setMaterial(String material){
        this.material = material;
    }
    public void setCor(String cor){
        this.cor = cor;
    }
    public void setTamanho(int tamanho){
        this.tamanho = tamanho;
    }
    public void setCheia(Boolean cheia){
        this.cheia = cheia;
    }
    public String getMaterial(){
        return this.material;
    }
    public String getCor(){
        return this.cor;
    }
    public int getTamanho(){
        return this.tamanho;
    }
    public boolean getCheia(){
        return this.cheia;
    }
    public void pintar(){
        this.setCor(cor);
    }
    public void encher(){
        if (getCheia() == false){
            this.setCheia(true);
        }
    }
    public void esvaziar(){
        if (getCheia() == true){
            this.setCheia(false);
        }
    }
}