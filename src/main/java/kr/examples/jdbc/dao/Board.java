package kr.examples.jdbc.dao;

import java.util.Date;

public class Board {
    private long id;
    private String title;
    private String name;
    private String content;
    private Date regDate;
    private int readCount;
    private int family;
    private int level;
    private int sequence;

    public Board(){
        this.regDate = new Date();
        this.readCount = 0;
    }

    public Board(String title, String content, String name) {
        this();
        this.title = title;
        this.content = content;
        this.name = name;
    }

    public Board(Long id, String title, String content, String name, Date regDate, int readCount) {
        this(title, content, name);
        this.id = id;
        this.regDate = regDate;
        this.readCount = readCount;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public int getReadCount() {
        return readCount;
    }

    public void setReadCount(int readCount) {
        this.readCount = readCount;
    }

    public int getFamily() {
        return family;
    }

    public void setFamily(int family) {
        this.family = family;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getSequence() {
        return sequence;
    }

    public void setSequence(int sequence) {
        this.sequence = sequence;
    }
}
