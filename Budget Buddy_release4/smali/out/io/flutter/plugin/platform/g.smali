.class public final synthetic Lio/flutter/plugin/platform/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/flutter/plugin/platform/f$b;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/f$b;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/g;->e:Lio/flutter/plugin/platform/f$b;

    iput p2, p0, Lio/flutter/plugin/platform/g;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/platform/g;->e:Lio/flutter/plugin/platform/f$b;

    iget v1, p0, Lio/flutter/plugin/platform/g;->f:I

    invoke-static {v0, v1}, Lio/flutter/plugin/platform/f$b;->a(Lio/flutter/plugin/platform/f$b;I)V

    return-void
.end method
