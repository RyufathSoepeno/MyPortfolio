.class Lr0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lr0/h;


# direct methods
.method constructor <init>(Lr0/h;)V
    .registers 2

    iput-object p1, p0, Lr0/h$a;->a:Lr0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls0/i;Ls0/j$d;)V
    .registers 9

    const-string v0, "error"

    iget-object v1, p0, Lr0/h$a;->a:Lr0/h;

    invoke-static {v1}, Lr0/h;->a(Lr0/h;)Lr0/h$b;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p1, Ls0/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MouseCursorChannel"

    invoke-static {v3, v2}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x4de8d908

    if-eq v4, v5, :cond_34

    goto :goto_3d

    :cond_34
    const-string v4, "activateSystemCursor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v2, 0x0

    :cond_3d
    :goto_3d
    if-eqz v2, :cond_40

    goto :goto_8e

    :cond_40
    iget-object p1, p1, Ls0/i;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    const-string v1, "kind"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4c} :catch_75

    :try_start_4c
    iget-object v1, p0, Lr0/h$a;->a:Lr0/h;

    invoke-static {v1}, Lr0/h;->a(Lr0/h;)Lr0/h$b;

    move-result-object v1

    invoke-interface {v1, p1}, Lr0/h$b;->a(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_5b

    :try_start_55
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Ls0/j$d;->a(Ljava/lang/Object;)V

    goto :goto_8e

    :catch_5b
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when setting cursors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v3}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_74} :catch_75

    goto :goto_8e

    :catch_75
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v3}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8e
    return-void
.end method
