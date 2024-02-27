.class public final Lio/flutter/plugins/localauth/f$e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/localauth/f$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lio/flutter/plugins/localauth/f$d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/flutter/plugins/localauth/f$e;
    .registers 3

    new-instance v0, Lio/flutter/plugins/localauth/f$e;

    invoke-direct {v0}, Lio/flutter/plugins/localauth/f$e;-><init>()V

    iget-object v1, p0, Lio/flutter/plugins/localauth/f$e$a;->a:Lio/flutter/plugins/localauth/f$d;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/localauth/f$e;->b(Lio/flutter/plugins/localauth/f$d;)V

    return-object v0
.end method

.method public b(Lio/flutter/plugins/localauth/f$d;)Lio/flutter/plugins/localauth/f$e$a;
    .registers 2

    iput-object p1, p0, Lio/flutter/plugins/localauth/f$e$a;->a:Lio/flutter/plugins/localauth/f$d;

    return-object p0
.end method
