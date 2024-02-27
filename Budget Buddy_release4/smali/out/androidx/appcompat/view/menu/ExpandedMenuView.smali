.class public final Landroidx/appcompat/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/e$b;
.implements Landroidx/appcompat/view/menu/k;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final g:[I


# instance fields
.field private e:Landroidx/appcompat/view/menu/e;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroidx/appcompat/view/menu/ExpandedMenuView;->g:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x10100d4
        0x1010129
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ExpandedMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v0, Landroidx/appcompat/view/menu/ExpandedMenuView;->g:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/appcompat/widget/m1;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/m1;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/m1;->r(I)Z

    move-result p2

    if-eqz p2, :cond_1a

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/m1;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/m1;->r(I)Z

    move-result p3

    if-eqz p3, :cond_28

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/m1;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_28
    invoke-virtual {p1}, Landroidx/appcompat/widget/m1;->v()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->e:Landroidx/appcompat/view/menu/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/e;->L(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/e;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->e:Landroidx/appcompat/view/menu/e;

    return-void
.end method

.method public getWindowAnimations()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/view/menu/ExpandedMenuView;->f:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ExpandedMenuView;->a(Landroidx/appcompat/view/menu/g;)Z

    return-void
.end method
