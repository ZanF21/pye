1. effective compile-time analysis for software prefetching in Java
2. use intra and interprocedural analysis to identify projitable prefetching opportunities for greedy and jump-pointerprefetching
    - greedy prefetching: prefetching the next element in a linked list
    - jump-pointer prefetching: prefetching the next element in a linked list
3. results show that both prefetching techniques improve 4 of our 10 programs. The largest performance improvement is 48% with jump-pointers

    - consistent improvements are dijjicult to obtain

4. analyzing object fields, when combined with inlining or interprocedural analysis, is necessary to discover linked structure accesses that programmers hide using encapsulation
    - analysis also identifies indirect objects that are referenced by linked structuresas candidates for prefetching

---

1. ### Basic intraprocedural analysis

    - Intraprocedural recurrent analysis discovers the field assignments that are recurrent due to loops
