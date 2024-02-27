.class abstract Lk/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lk/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lk/b$f<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field e:Lk/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lk/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lk/b$c;Lk/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b$c<",
            "TK;TV;>;",
            "Lk/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk/b$e;->e:Lk/b$c;

    iput-object p1, p0, Lk/b$e;->f:Lk/b$c;

    return-void
.end method

.method private e()Lk/b$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lk/b$e;->f:Lk/b$c;

    iget-object v1, p0, Lk/b$e;->e:Lk/b$c;

    if-eq v0, v1, :cond_e

    if-nez v1, :cond_9

    goto :goto_e

    :cond_9
    invoke-virtual {p0, v0}, Lk/b$e;->c(Lk/b$c;)Lk/b$c;

    move-result-object v0

    return-object v0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Lk/b$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lk/b$e;->e:Lk/b$c;

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lk/b$e;->f:Lk/b$c;

    if-ne p1, v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lk/b$e;->f:Lk/b$c;

    iput-object v0, p0, Lk/b$e;->e:Lk/b$c;

    :cond_d
    iget-object v0, p0, Lk/b$e;->e:Lk/b$c;

    if-ne v0, p1, :cond_17

    invoke-virtual {p0, v0}, Lk/b$e;->b(Lk/b$c;)Lk/b$c;

    move-result-object v0

    iput-object v0, p0, Lk/b$e;->e:Lk/b$c;

    :cond_17
    iget-object v0, p0, Lk/b$e;->f:Lk/b$c;

    if-ne v0, p1, :cond_21

    invoke-direct {p0}, Lk/b$e;->e()Lk/b$c;

    move-result-object p1

    iput-object p1, p0, Lk/b$e;->f:Lk/b$c;

    :cond_21
    return-void
.end method

.method abstract b(Lk/b$c;)Lk/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b$c<",
            "TK;TV;>;)",
            "Lk/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method abstract c(Lk/b$c;)Lk/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b$c<",
            "TK;TV;>;)",
            "Lk/b$c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public d()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lk/b$e;->f:Lk/b$c;

    invoke-direct {p0}, Lk/b$e;->e()Lk/b$c;

    move-result-object v1

    iput-object v1, p0, Lk/b$e;->f:Lk/b$c;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lk/b$e;->f:Lk/b$c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lk/b$e;->d()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
