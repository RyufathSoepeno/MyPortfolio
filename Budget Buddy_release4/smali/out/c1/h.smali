.class public final Lc1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:Lc1/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc1/h;

    invoke-direct {v0}, Lc1/h;-><init>()V

    sput-object v0, Lc1/h;->e:Lc1/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
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

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public plus(Lc1/g;)Lc1/g;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
