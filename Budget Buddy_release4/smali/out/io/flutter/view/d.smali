.class public final synthetic Lio/flutter/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/e;


# instance fields
.field public final synthetic a:Lio/flutter/view/f$l;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/view/f$l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/view/d;->a:Lio/flutter/view/f$l;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lio/flutter/view/d;->a:Lio/flutter/view/f$l;

    check-cast p1, Lio/flutter/view/f$l;

    invoke-static {v0, p1}, Lio/flutter/view/f;->b(Lio/flutter/view/f$l;Lio/flutter/view/f$l;)Z

    move-result p1

    return p1
.end method
