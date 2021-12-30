// J2ME application for Addition, Subtraction, Multiplication and Division of two numbers.

import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

public class P4 extends MIDlet implements CommandListener
{
    private Form form;
    private Display display;
    private TextField num1, num2;
    private Command add, sub, mul, div;
    private StringItem item;

    public P4(){

    }

    public void startApp(){
        display=Display.getDisplay(this);
        Form form=new Form("Calculator");
        form.append("CASIO Calculator");
        item=new StringItem("Result","");

        num1=new TextField("Enter First Number", "", 30, TextField.NUMERIC);
        num2=new TextField("Enter Second Number", "", 30, TextField.NUMERIC);
        form.append(num1);
        form.append(num2);
        add=new Command("Addition",Command.OK,1);
        sub=new Command("Subtraction",Command.OK,1);
        mul=new Command("Multiplication",Command.OK,1);
        div=new Command("Division",Command.OK,1);
        form.addCommand(add);
        form.addCommand(sub);
        form.addCommand(mul);
        form.addCommand(div);
        form.append(item);
        form.setCommandListener(this);
        display.setCurrent(form);
    }

    public void pauseApp(){

    }

    public void destroyApp(boolean unconditional){
        notifyDestroyed();
    }

    public void calculate(){
        float a=Float.parseFloat(num1.getString());
        float b=Float.parseFloat(num2.getString());
        float res=a+b;
        item.setText(res+"");
    }
    
    public void calculate1() {
        float a = Float.parseFloat(num1.getString());
        float b = Float.parseFloat(num2.getString());
        float res = a - b;
        item.setText(res + "");
    }
    
    public void calculate2() {
        float a = Float.parseFloat(num1.getString());
        float b = Float.parseFloat(num2.getString());
        float res = a * b;
        item.setText(res + "");
    }
    
    public void calculate3() {
        float a = Float.parseFloat(num1.getString());
        float b = Float.parseFloat(num2.getString());
        float res = a / b;
        item.setText(res + "");
    }

    public void commandAction(Command c, Displayable d){
        String label=c.getLabel();
        if(label.equals("Addition")){
            calculate();
        }
        else if(label.equals("Subtraction")){
            calculate1();
        }
        else if(label.equals("Multiplication")){
            calculate2();
            form.append("The Answer is:");
        }
        else if(label.equals("Division")){
            calculate3();
            form.append("The Answer is:");
        }
        
    }



}
