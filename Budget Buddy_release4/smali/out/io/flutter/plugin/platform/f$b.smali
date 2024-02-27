.class Lio/flutter/plugin/platform/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/f;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lio/flutter/plugin/platform/f;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/f;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lio/flutter/plugin/platform/f$b;->b:Lio/flutter/plugin/platform/f;

    iput-object p2, p0, Lio/flutter/plugin/platform/f$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/flutter/plugin/platform/f$b;I)V
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/f$b;->b(I)V

    return-void
.end method

.method private synthetic b(I)V
    .registers 3

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_c

    iget-object p1, p0, Lio/flutter/plugin/platform/f$b;->b:Lio/flutter/plugin/platform/f;

    invoke-static {p1}, Lio/flutter/plugin/platform/f;->f(Lio/flutter/plugin/platform/f;)Lr0/j;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_13

    :cond_c
    iget-object p1, p0, Lio/flutter/plugin/platform/f$b;->b:Lio/flutter/plugin/platform/f;

    invoke-static {p1}, Lio/flutter/plugin/platform/f;->f(Lio/flutter/plugin/platform/f;)Lr0/j;

    move-result-object p1

    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p1, v0}, Lr0/j;->m(Z)V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugin/platform/f$b;->a:Landroid/view/View;

    new-instance v1, Lio/flutter/plugin/platform/g;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugin/platform/g;-><init>(Lio/flutter/plugin/platform/f$b;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
