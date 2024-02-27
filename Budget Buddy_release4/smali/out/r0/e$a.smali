.class Lr0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lr0/e;


# direct methods
.method constructor <init>(Lr0/e;)V
    .registers 2

    iput-object p1, p0, Lr0/e$a;->b:Lr0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lr0/e$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ls0/i;Ls0/j$d;)V
    .registers 5

    iget-object v0, p0, Lr0/e$a;->b:Lr0/e;

    invoke-static {v0}, Lr0/e;->a(Lr0/e;)Lr0/e$b;

    move-result-object v0

    if-nez v0, :cond_e

    :goto_8
    iget-object p1, p0, Lr0/e$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ls0/j$d;->a(Ljava/lang/Object;)V

    goto :goto_38

    :cond_e
    iget-object p1, p1, Ls0/i;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "getKeyboardState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-interface {p2}, Ls0/j$d;->c()V

    goto :goto_38

    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lr0/e$a;->b:Lr0/e;

    invoke-static {p1}, Lr0/e;->a(Lr0/e;)Lr0/e$b;

    move-result-object p1

    invoke-interface {p1}, Lr0/e$b;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lr0/e$a;->a:Ljava/util/Map;
    :try_end_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_2b} :catch_2c

    goto :goto_8

    :catch_2c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "error"

    invoke-interface {p2, v1, p1, v0}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :goto_38
    return-void
.end method
