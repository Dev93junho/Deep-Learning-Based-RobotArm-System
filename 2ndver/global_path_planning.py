#-*- coding:utf-8 -*-

'''
global workspace의 경로를 계획하기 위해 dijkstra algorithm을 활용한 path planning module을 생성합니다.
Created by Junho Shin, Sep. 2021
'''

import heapq

def dijkstra(graph, start):
    distances = {node: float('inf') for node in graph} # start로부터 거리 값을 저장하기 위함
    distances[start] = 0 # 시작값은 0부터 

    queue = []

    heapq.heappush(queue, [distances[start], start]) # 시작 노드부터 탐색시작

    while queue:
        current_distance, current_destination = heapq.heappop # 탐색할 노드와 거리를 가져옴
    
        if distances[current_destination] < current_distance: # 기존 거리보다 길면 무시
            continue

        for new_destination, new_distance in graph[current_destination].item():
            distance = current_distance + new_distance # 해당 노드를 거쳐갈 때마다의 거리
            if distance < distances[new_destination]: # 저장된 거리보다 작으면 갱신함
                distances[new_destination] = distance
                heapq.heappush(queue, [distance, new_destination]) # 다음 인접거리 계산
    return distances
