.class Lio/flutter/plugins/localauth/f$i;
.super Ls0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/localauth/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# static fields
.field public static final d:Lio/flutter/plugins/localauth/f$i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/flutter/plugins/localauth/f$i;

    invoke-direct {v0}, Lio/flutter/plugins/localauth/f$i;-><init>()V

    sput-object v0, Lio/flutter/plugins/localauth/f$i;->d:Lio/flutter/plugins/localauth/f$i;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ls0/p;-><init>()V

    return-void
.end method


# virtual methods
.method protected g(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3

    packed-switch p1, :pswitch_data_34

    invoke-super {p0, p1, p2}, Ls0/p;->g(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0, p2}, Ls0/p;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/localauth/f$f;->a(Ljava/util/ArrayList;)Lio/flutter/plugins/localauth/f$f;

    move-result-object p1

    return-object p1

    :pswitch_13
    invoke-virtual {p0, p2}, Ls0/p;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/localauth/f$e;->a(Ljava/util/ArrayList;)Lio/flutter/plugins/localauth/f$e;

    move-result-object p1

    return-object p1

    :pswitch_1e
    invoke-virtual {p0, p2}, Ls0/p;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/localauth/f$c;->a(Ljava/util/ArrayList;)Lio/flutter/plugins/localauth/f$c;

    move-result-object p1

    return-object p1

    :pswitch_29
    invoke-virtual {p0, p2}, Ls0/p;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/flutter/plugins/localauth/f$b;->a(Ljava/util/ArrayList;)Lio/flutter/plugins/localauth/f$b;

    move-result-object p1

    return-object p1

    :pswitch_data_34
    .packed-switch -0x80
        :pswitch_29
        :pswitch_1e
        :pswitch_13
        :pswitch_8
    .end packed-switch
.end method

.method protected p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p2, Lio/flutter/plugins/localauth/f$b;

    if-eqz v0, :cond_13

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Lio/flutter/plugins/localauth/f$b;

    invoke-virtual {p2}, Lio/flutter/plugins/localauth/f$b;->c()Ljava/util/ArrayList;

    move-result-object p2

    :goto_f
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/localauth/f$i;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_46

    :cond_13
    instance-of v0, p2, Lio/flutter/plugins/localauth/f$c;

    if-eqz v0, :cond_23

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Lio/flutter/plugins/localauth/f$c;

    invoke-virtual {p2}, Lio/flutter/plugins/localauth/f$c;->j()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_f

    :cond_23
    instance-of v0, p2, Lio/flutter/plugins/localauth/f$e;

    if-eqz v0, :cond_33

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Lio/flutter/plugins/localauth/f$e;

    invoke-virtual {p2}, Lio/flutter/plugins/localauth/f$e;->c()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_f

    :cond_33
    instance-of v0, p2, Lio/flutter/plugins/localauth/f$f;

    if-eqz v0, :cond_43

    const/16 v0, 0x83

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Lio/flutter/plugins/localauth/f$f;

    invoke-virtual {p2}, Lio/flutter/plugins/localauth/f$f;->u()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_f

    :cond_43
    invoke-super {p0, p1, p2}, Ls0/p;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_46
    return-void
.end method
