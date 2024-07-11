package com.app.notas.domain;

import com.app.notas.model.SearchOperation;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class SearchCriteria {
    private String key;
    private Object value1;
    private Object value2;
    private SearchOperation operation;
}