package com.hbrassapp.demo.Models;

import org.springframework.data.repository.CrudRepository;

import javax.persistence.criteria.CriteriaBuilder;

public interface InvoiceRepo extends CrudRepository <Invoice, String> {
}
