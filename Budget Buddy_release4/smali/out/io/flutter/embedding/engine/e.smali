.class public Lio/flutter/embedding/engine/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lio/flutter/embedding/engine/e;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/embedding/engine/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/e;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Lio/flutter/embedding/engine/e;
    .registers 2

    sget-object v0, Lio/flutter/embedding/engine/e;->b:Lio/flutter/embedding/engine/e;

    if-nez v0, :cond_17

    const-class v0, Lio/flutter/embedding/engine/e;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lio/flutter/embedding/engine/e;->b:Lio/flutter/embedding/engine/e;

    if-nez v1, :cond_12

    new-instance v1, Lio/flutter/embedding/engine/e;

    invoke-direct {v1}, Lio/flutter/embedding/engine/e;-><init>()V

    sput-object v1, Lio/flutter/embedding/engine/e;->b:Lio/flutter/embedding/engine/e;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lio/flutter/embedding/engine/e;->b:Lio/flutter/embedding/engine/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/flutter/embedding/engine/d;
    .registers 3

    iget-object v0, p0, Lio/flutter/embedding/engine/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/embedding/engine/d;

    return-object p1
.end method
