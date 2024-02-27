.class final Lb1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:Lb1/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb1/u;

    invoke-direct {v0}, Lb1/u;-><init>()V

    sput-object v0, Lb1/u;->e:Lb1/u;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Void;)Z
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Void;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lb1/v;->e:Lb1/v;

    return-object v0
.end method

.method public clear()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/lang/Void;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lb1/u;->a(Ljava/lang/Void;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lb1/v;->e:Lb1/v;

    return-object v0
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lb1/u;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public f()Ljava/util/Collection;
    .registers 2

    sget-object v0, Lb1/t;->e:Lb1/t;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Void;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lb1/u;->b(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lb1/u;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation is not supported for read-only collection"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lb1/u;->g(Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final bridge size()I
    .registers 2

    invoke-virtual {p0}, Lb1/u;->e()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "{}"

    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lb1/u;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
