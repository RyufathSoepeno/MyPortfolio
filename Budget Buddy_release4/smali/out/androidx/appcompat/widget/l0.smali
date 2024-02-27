.class public Landroidx/appcompat/widget/l0;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# instance fields
.field private final e:Landroidx/appcompat/widget/e0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/l0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Landroidx/appcompat/widget/e0;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e0;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/l0;->e:Landroidx/appcompat/widget/e0;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e0;->m(Landroid/util/AttributeSet;I)V

    return-void
.end method
