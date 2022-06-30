package com.decathlon.application;

import com.decathlon.store.api.ItemsApiDelegate;
import com.decathlon.store.model.Item;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.time.OffsetDateTime;
import java.util.concurrent.ForkJoinPool;

@Service
@RequiredArgsConstructor
public class ItemsImpl implements ItemsApiDelegate {

    @Override
    public ResponseEntity<Item> getItem(String itemId) {
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        return ResponseEntity.ok(Item.builder()
                .color("blue")
                .date(OffsetDateTime.now())
                .description("mvc item")
                .name("item")
                .build());
    }
}
