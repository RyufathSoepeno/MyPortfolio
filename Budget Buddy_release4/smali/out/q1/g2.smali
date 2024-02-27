.class final Lq1/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/g$b;
.implements Lc1/g$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc1/g$b;",
        "Lc1/g$c<",
        "Lq1/g2;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lq1/g2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lq1/g2;

    invoke-direct {v0}, Lq1/g2;-><init>()V

    sput-object v0, Lq1/g2;->e:Lq1/g2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc1/g$c<",
            "*>;"
        }
    .end annotation

    return-object p0
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
