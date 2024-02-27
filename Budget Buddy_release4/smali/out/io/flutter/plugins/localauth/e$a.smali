.class Lio/flutter/plugins/localauth/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/localauth/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugins/localauth/e;


# direct methods
.method constructor <init>(Lio/flutter/plugins/localauth/e;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/plugins/localauth/e$a;->a:Lio/flutter/plugins/localauth/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)Z
    .registers 4

    const/16 p3, 0xdd

    if-ne p1, p3, :cond_1e

    const/4 p1, -0x1

    if-ne p2, p1, :cond_10

    iget-object p1, p0, Lio/flutter/plugins/localauth/e$a;->a:Lio/flutter/plugins/localauth/e;

    iget-object p2, p1, Lio/flutter/plugins/localauth/e;->g:Lio/flutter/plugins/localauth/f$j;

    if-eqz p2, :cond_10

    sget-object p3, Lio/flutter/plugins/localauth/f$d;->f:Lio/flutter/plugins/localauth/f$d;

    goto :goto_16

    :cond_10
    iget-object p1, p0, Lio/flutter/plugins/localauth/e$a;->a:Lio/flutter/plugins/localauth/e;

    iget-object p2, p1, Lio/flutter/plugins/localauth/e;->g:Lio/flutter/plugins/localauth/f$j;

    sget-object p3, Lio/flutter/plugins/localauth/f$d;->g:Lio/flutter/plugins/localauth/f$d;

    :goto_16
    invoke-virtual {p1, p2, p3}, Lio/flutter/plugins/localauth/e;->s(Lio/flutter/plugins/localauth/f$j;Lio/flutter/plugins/localauth/f$d;)V

    iget-object p1, p0, Lio/flutter/plugins/localauth/e$a;->a:Lio/flutter/plugins/localauth/e;

    const/4 p2, 0x0

    iput-object p2, p1, Lio/flutter/plugins/localauth/e;->g:Lio/flutter/plugins/localauth/f$j;

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method
