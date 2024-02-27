.class public Landroidx/appcompat/widget/FitWindowsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private e:Landroidx/appcompat/widget/q0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/FitWindowsFrameLayout;->e:Landroidx/appcompat/widget/q0;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/q0;->a(Landroid/graphics/Rect;)V

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setOnFitSystemWindowsListener(Landroidx/appcompat/widget/q0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/FitWindowsFrameLayout;->e:Landroidx/appcompat/widget/q0;

    return-void
.end method
