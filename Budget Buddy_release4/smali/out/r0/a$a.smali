.class Lr0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls0/a$d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lr0/a;


# direct methods
.method constructor <init>(Lr0/a;)V
    .registers 2

    iput-object p1, p0, Lr0/a$a;->a:Lr0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls0/a$e;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls0/a$e<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lr0/a$a;->a:Lr0/a;

    invoke-static {v0}, Lr0/a;->a(Lr0/a;)Lr0/a$b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-interface {p2, v1}, Ls0/a$e;->a(Ljava/lang/Object;)V

    return-void

    :cond_d
    check-cast p1, Ljava/util/HashMap;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "data"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityChannel"

    invoke-static {v4, v3}, Le0/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_ee

    goto :goto_7c

    :sswitch_46
    const-string v4, "longPress"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_7c

    :cond_4f
    const/4 v3, 0x4

    goto :goto_7c

    :sswitch_51
    const-string v4, "focus"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_7c

    :cond_5a
    const/4 v3, 0x3

    goto :goto_7c

    :sswitch_5c
    const-string v4, "tap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_7c

    :cond_65
    const/4 v3, 0x2

    goto :goto_7c

    :sswitch_67
    const-string v4, "announce"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_7c

    :cond_70
    const/4 v3, 0x1

    goto :goto_7c

    :sswitch_72
    const-string v4, "tooltip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v3, 0x0

    :goto_7c
    const-string v0, "message"

    const-string v4, "nodeId"

    packed-switch v3, :pswitch_data_104

    goto :goto_e9

    :pswitch_84
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_e9

    iget-object v0, p0, Lr0/a$a;->a:Lr0/a;

    invoke-static {v0}, Lr0/a;->a(Lr0/a;)Lr0/a$b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lr0/a$b;->f(I)V

    goto :goto_e9

    :pswitch_9a
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_e9

    iget-object v0, p0, Lr0/a$a;->a:Lr0/a;

    invoke-static {v0}, Lr0/a;->a(Lr0/a;)Lr0/a$b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lr0/a$b;->e(I)V

    goto :goto_e9

    :pswitch_b0
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_e9

    iget-object v0, p0, Lr0/a$a;->a:Lr0/a;

    invoke-static {v0}, Lr0/a;->a(Lr0/a;)Lr0/a$b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lr0/a$b;->g(I)V

    goto :goto_e9

    :pswitch_c6
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_e9

    iget-object v0, p0, Lr0/a$a;->a:Lr0/a;

    invoke-static {v0}, Lr0/a;->a(Lr0/a;)Lr0/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lr0/a$b;->a(Ljava/lang/String;)V

    goto :goto_e9

    :pswitch_d8
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_e9

    iget-object v0, p0, Lr0/a$a;->a:Lr0/a;

    invoke-static {v0}, Lr0/a;->a(Lr0/a;)Lr0/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lr0/a$b;->d(Ljava/lang/String;)V

    :cond_e9
    :goto_e9
    invoke-interface {p2, v1}, Ls0/a$e;->a(Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_ee
    .sparse-switch
        -0x43f42ffd -> :sswitch_72
        -0x26b86b97 -> :sswitch_67
        0x1bfa3 -> :sswitch_5c
        0x5d154d8 -> :sswitch_51
        0x6ce9b27 -> :sswitch_46
    .end sparse-switch

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_c6
        :pswitch_b0
        :pswitch_9a
        :pswitch_84
    .end packed-switch
.end method
