package by.it.baidak.jd02_08;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class Sax extends DefaultHandler {

    private String tab;
    private StringBuilder content;

    @Override
    public void startDocument() throws SAXException {
        tab = "";
        content = new StringBuilder();
    }

    @Override
    public void endDocument() throws SAXException {
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        StringBuilder att = new StringBuilder();
        for (int i = 0; i < attributes.getLength(); i++) {
            String name = attributes.getLocalName(i);
            String value = attributes.getValue(i);
            att.append(" ").append(name).append("=\"").append(value).append("\"");
        }
        System.out.println(tab + "<" + qName + att + ">");
        tab = "\t" + tab;
    }

    @Override
    public void endElement(String uri, String localName, String qName) throws SAXException {
        if (content.length() > 0){
            System.out.println(tab + content);
            content.setLength(0);
        }

        tab = tab.substring(1);
        System.out.println(tab + "</" + qName + ">");
    }

    @Override
    public void characters(char[] ch, int start, int length) throws SAXException {
        String part = new String(ch, start, length);
        content.append(part.trim());
    }
}
