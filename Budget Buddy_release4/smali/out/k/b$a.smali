.class Lk/b$a;
.super Lk/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lk/b$e<",
        "TK;TV;>;"
    }
.end annotation


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

    invoke-direct {p0, p1, p2}, Lk/b$e;-><init>(Lk/b$c;Lk/b$c;)V

    return-void
.end method


# virtual methods
.method b(Lk/b$c;)Lk/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b$c<",
            "TK;TV;>;)",
            "Lk/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Lk/b$c;->h:Lk/b$c;

    return-object p1
.end method

.method c(Lk/b$c;)Lk/b$c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b$c<",
            "TK;TV;>;)",
            "Lk/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Lk/b$c;->g:Lk/b$c;

    return-object p1
.end method