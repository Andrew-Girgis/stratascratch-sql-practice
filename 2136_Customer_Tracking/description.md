# Customer Tracking

**ID:** 2136 | **Difficulty:** Hard | **Companies:** Shopify, Amazon

## Problem

Given users' session logs, calculate how many hours each user was active in total across all recorded sessions.

> A session starts when `state = 1` and ends when `state = 0`.

## Tables

| Table           | Columns                   |
|-----------------|---------------------------|
| `cust_tracking` | cust_id, state, timestamp |
