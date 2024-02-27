.class public final Ls0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/i;->a:Ljava/lang/String;

    iput-object p2, p0, Ls0/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Ls0/i;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_11

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1c

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1c
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Ls0/i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Ls0/i;->b:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_11

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1c

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1c
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method
