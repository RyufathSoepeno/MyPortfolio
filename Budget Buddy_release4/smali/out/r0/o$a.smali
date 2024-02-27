.class Lr0/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lr0/o;


# direct methods
.method constructor <init>(Lr0/o;)V
    .registers 2

    iput-object p1, p0, Lr0/o$a;->a:Lr0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls0/i;Ls0/j$d;)V
    .registers 7

    iget-object v0, p0, Lr0/o$a;->a:Lr0/o;

    invoke-static {v0}, Lr0/o;->a(Lr0/o;)Lr0/o$b;

    move-result-object v0

    const-string v1, "SpellCheckChannel"

    if-nez v0, :cond_10

    const-string p1, "No SpellCheckeMethodHandler registered, call not forwarded to spell check API."

    invoke-static {v1, p1}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p1, Ls0/i;->a:Ljava/lang/String;

    iget-object p1, p1, Ls0/i;->b:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "SpellCheck.initiateSpellCheck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-interface {p2}, Ls0/j$d;->c()V

    goto :goto_61

    :cond_3c
    :try_start_3c
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lr0/o$a;->a:Lr0/o;

    invoke-static {v1}, Lr0/o;->a(Lr0/o;)Lr0/o$b;

    move-result-object v1

    invoke-interface {v1, v0, p1, p2}, Lr0/o$b;->a(Ljava/lang/String;Ljava/lang/String;Ls0/j$d;)V
    :try_end_55
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_55} :catch_56

    goto :goto_61

    :catch_56
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "error"

    invoke-interface {p2, v1, p1, v0}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_61
    return-void
.end method
