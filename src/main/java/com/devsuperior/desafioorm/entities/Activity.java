package com.devsuperior.desafioorm.entities;

import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "tb_activity")
public class Activity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @Column(columnDefinition = "TEXT")
    private  String description;
    private Double price;

    @ManyToOne
    @JoinColumn(name = "categories_id")
    private Category categories;

    @OneToOne(mappedBy = "activity", cascade = CascadeType.ALL)
    private Block block;

    @ManyToMany(mappedBy = "activities")
    private Set<Participant> participants = new HashSet<>();


    public Activity(){
    }

    public Activity(Long id, String name, String description, Double price, Category categories) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.categories = categories;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Category getCategories() {
        return categories;
    }

    public void setCategories(Category categories) {
        this.categories = categories;
    }
}
