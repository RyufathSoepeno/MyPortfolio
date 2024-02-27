.class public abstract Lc1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g$b;


# instance fields
.field private final key:Lc1/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc1/g$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc1/g$c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/g$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/a;->key:Lc1/g$c;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lj1/p<",
            "-TR;-",
            "Lc1/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lc1/g$b$a;->a(Lc1/g$b;Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lc1/g$c;)Lc1/g$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc1/g$b;",
            ">(",
            "Lc1/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lc1/g$b$a;->b(Lc1/g$b;Lc1/g$c;)Lc1/g$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lc1/g$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc1/g$c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lc1/a;->key:Lc1/g$c;

    return-object v0
.end method

.method public minusKey(Lc1/g$c;)Lc1/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/g$c<",
            "*>;)",
            "Lc1/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lc1/g$b$a;->c(Lc1/g$b;Lc1/g$c;)Lc1/g;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lc1/g;)Lc1/g;
    .registers 2

    invoke-static {p0, p1}, Lc1/g$b$a;->d(Lc1/g$b;Lc1/g;)Lc1/g;

    move-result-object p1

    return-object p1
.end method
