.class public final Lu1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g;


# instance fields
.field public final e:Ljava/lang/Throwable;

.field private final synthetic f:Lc1/g;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lc1/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/a;->e:Ljava/lang/Throwable;

    iput-object p2, p0, Lu1/a;->f:Lc1/g;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;
    .registers 4
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

    iget-object v0, p0, Lu1/a;->f:Lc1/g;

    invoke-interface {v0, p1, p2}, Lc1/g;->fold(Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lc1/g$c;)Lc1/g$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc1/g$b;",
            ">(",
            "Lc1/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lu1/a;->f:Lc1/g;

    invoke-interface {v0, p1}, Lc1/g;->get(Lc1/g$c;)Lc1/g$b;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(Lc1/g$c;)Lc1/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/g$c<",
            "*>;)",
            "Lc1/g;"
        }
    .end annotation

    iget-object v0, p0, Lu1/a;->f:Lc1/g;

    invoke-interface {v0, p1}, Lc1/g;->minusKey(Lc1/g$c;)Lc1/g;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lc1/g;)Lc1/g;
    .registers 3

    iget-object v0, p0, Lu1/a;->f:Lc1/g;

    invoke-interface {v0, p1}, Lc1/g;->plus(Lc1/g;)Lc1/g;

    move-result-object p1

    return-object p1
.end method
