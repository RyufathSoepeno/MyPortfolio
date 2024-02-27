.class final Landroidx/appcompat/view/menu/b;
.super Landroidx/appcompat/view/menu/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/b$d;
    }
.end annotation


# static fields
.field private static final F:I


# instance fields
.field private A:Z

.field private B:Landroidx/appcompat/view/menu/j$a;

.field C:Landroid/view/ViewTreeObserver;

.field private D:Landroid/widget/PopupWindow$OnDismissListener;

.field E:Z

.field private final f:Landroid/content/Context;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Z

.field final k:Landroid/os/Handler;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/e;",
            ">;"
        }
    .end annotation
.end field

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/b$d;",
            ">;"
        }
    .end annotation
.end field

.field final n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final o:Landroid/view/View$OnAttachStateChangeListener;

.field private final p:Landroidx/appcompat/widget/x0;

.field private q:I

.field private r:I

.field private s:Landroid/view/View;

.field t:Landroid/view/View;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lc/g;->e:I

    sput v0, Landroidx/appcompat/view/menu/b;->F:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .registers 7

    invoke-direct {p0}, Landroidx/appcompat/view/menu/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/b;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    new-instance v0, Landroidx/appcompat/view/menu/b$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/b$a;-><init>(Landroidx/appcompat/view/menu/b;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/b;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Landroidx/appcompat/view/menu/b$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/b$b;-><init>(Landroidx/appcompat/view/menu/b;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/b;->o:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroidx/appcompat/view/menu/b$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/b$c;-><init>(Landroidx/appcompat/view/menu/b;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/b;->p:Landroidx/appcompat/widget/x0;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/b;->q:I

    iput v0, p0, Landroidx/appcompat/view/menu/b;->r:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->f:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/b;->s:Landroid/view/View;

    iput p3, p0, Landroidx/appcompat/view/menu/b;->h:I

    iput p4, p0, Landroidx/appcompat/view/menu/b;->i:I

    iput-boolean p5, p0, Landroidx/appcompat/view/menu/b;->j:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/b;->z:Z

    invoke-direct {p0}, Landroidx/appcompat/view/menu/b;->D()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/view/menu/b;->u:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Lc/d;->d:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/b;->g:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->k:Landroid/os/Handler;

    return-void
.end method

.method private A(Landroidx/appcompat/view/menu/e;)I
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/b$d;

    iget-object v2, v2, Landroidx/appcompat/view/menu/b$d;->b:Landroidx/appcompat/view/menu/e;

    if-ne p1, v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method private B(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/e;)Landroid/view/MenuItem;
    .registers 7

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private C(Landroidx/appcompat/view/menu/b$d;Landroidx/appcompat/view/menu/e;)Landroid/view/View;
    .registers 10

    iget-object v0, p1, Landroidx/appcompat/view/menu/b$d;->b:Landroidx/appcompat/view/menu/e;

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/view/menu/b;->B(Landroidx/appcompat/view/menu/e;Landroidx/appcompat/view/menu/e;)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return-object v0

    :cond_a
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/b$d;->a()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/d;

    goto :goto_27

    :cond_24
    check-cast v1, Landroidx/appcompat/view/menu/d;

    const/4 v2, 0x0

    :goto_27
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/d;->getCount()I

    move-result v4

    :goto_2b
    const/4 v5, -0x1

    if-ge v3, v4, :cond_38

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/d;->c(I)Landroidx/appcompat/view/menu/g;

    move-result-object v6

    if-ne p2, v6, :cond_35

    goto :goto_39

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_38
    const/4 v3, -0x1

    :goto_39
    if-ne v3, v5, :cond_3c

    return-object v0

    :cond_3c
    add-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr v3, p2

    if-ltz v3, :cond_50

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lt v3, p2, :cond_4b

    goto :goto_50

    :cond_4b
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_50
    :goto_50
    return-object v0
.end method

.method private D()I
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->s:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/h0;->n(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    :cond_a
    return v1
.end method

.method private E(I)I
    .registers 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/b$d;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/b$d;->a()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Landroidx/appcompat/view/menu/b;->t:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v4, p0, Landroidx/appcompat/view/menu/b;->u:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_35

    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget p1, v3, Landroid/graphics/Rect;->right:I

    if-le v1, p1, :cond_34

    return v5

    :cond_34
    return v2

    :cond_35
    aget v0, v1, v5

    sub-int/2addr v0, p1

    if-gez v0, :cond_3b

    return v2

    :cond_3b
    return v5
.end method

.method private F(Landroidx/appcompat/view/menu/e;)V
    .registers 16

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/d;

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/b;->j:Z

    sget v3, Landroidx/appcompat/view/menu/b;->F:I

    invoke-direct {v1, p1, v0, v2, v3}, Landroidx/appcompat/view/menu/d;-><init>(Landroidx/appcompat/view/menu/e;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1e

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/b;->z:Z

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/d;->d(Z)V

    goto :goto_2b

    :cond_1e
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b;->c()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {p1}, Landroidx/appcompat/view/menu/h;->x(Landroidx/appcompat/view/menu/e;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/d;->d(Z)V

    :cond_2b
    :goto_2b
    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->f:Landroid/content/Context;

    iget v4, p0, Landroidx/appcompat/view/menu/b;->g:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Landroidx/appcompat/view/menu/h;->o(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/b;->z()Landroidx/appcompat/widget/b1;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/w0;->p(Landroid/widget/ListAdapter;)V

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/w0;->B(I)V

    iget v1, p0, Landroidx/appcompat/view/menu/b;->r:I

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/w0;->C(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5d

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/b$d;

    invoke-direct {p0, v1, p1}, Landroidx/appcompat/view/menu/b;->C(Landroidx/appcompat/view/menu/b$d;Landroidx/appcompat/view/menu/e;)Landroid/view/View;

    move-result-object v6

    goto :goto_5f

    :cond_5d
    move-object v1, v5

    move-object v6, v1

    :goto_5f
    const/4 v7, 0x0

    if-eqz v6, :cond_d1

    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/b1;->Q(Z)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/b1;->N(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Landroidx/appcompat/view/menu/b;->E(I)I

    move-result v8

    if-ne v8, v3, :cond_70

    const/4 v9, 0x1

    goto :goto_71

    :cond_70
    const/4 v9, 0x0

    :goto_71
    iput v8, p0, Landroidx/appcompat/view/menu/b;->u:I

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x5

    if-lt v8, v10, :cond_80

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/w0;->z(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_b1

    :cond_80
    const/4 v8, 0x2

    new-array v10, v8, [I

    iget-object v12, p0, Landroidx/appcompat/view/menu/b;->s:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v8, v8, [I

    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v12, p0, Landroidx/appcompat/view/menu/b;->r:I

    and-int/lit8 v12, v12, 0x7

    if-ne v12, v11, :cond_a7

    aget v12, v10, v7

    iget-object v13, p0, Landroidx/appcompat/view/menu/b;->s:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v10, v7

    aget v12, v8, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v8, v7

    :cond_a7
    aget v12, v8, v7

    aget v13, v10, v7

    sub-int/2addr v12, v13

    aget v8, v8, v3

    aget v10, v10, v3

    sub-int/2addr v8, v10

    :goto_b1
    iget v10, p0, Landroidx/appcompat/view/menu/b;->r:I

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_be

    if-eqz v9, :cond_b9

    goto :goto_c4

    :cond_b9
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_c6

    :cond_be
    if-eqz v9, :cond_c6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_c4
    add-int/2addr v12, v2

    goto :goto_c7

    :cond_c6
    :goto_c6
    sub-int/2addr v12, v2

    :goto_c7
    invoke-virtual {v4, v12}, Landroidx/appcompat/widget/w0;->l(I)V

    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/w0;->I(Z)V

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/w0;->j(I)V

    goto :goto_ea

    :cond_d1
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/b;->v:Z

    if-eqz v2, :cond_da

    iget v2, p0, Landroidx/appcompat/view/menu/b;->x:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/w0;->l(I)V

    :cond_da
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/b;->w:Z

    if-eqz v2, :cond_e3

    iget v2, p0, Landroidx/appcompat/view/menu/b;->y:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/w0;->j(I)V

    :cond_e3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->n()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/w0;->D(Landroid/graphics/Rect;)V

    :goto_ea
    new-instance v2, Landroidx/appcompat/view/menu/b$d;

    iget v3, p0, Landroidx/appcompat/view/menu/b;->u:I

    invoke-direct {v2, v4, p1, v3}, Landroidx/appcompat/view/menu/b$d;-><init>(Landroidx/appcompat/widget/b1;Landroidx/appcompat/view/menu/e;I)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroidx/appcompat/widget/w0;->a()V

    invoke-virtual {v4}, Landroidx/appcompat/widget/w0;->g()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v1, :cond_12d

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/b;->A:Z

    if-eqz v1, :cond_12d

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->x()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_12d

    sget v1, Lc/g;->l:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->x()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v4}, Landroidx/appcompat/widget/w0;->a()V

    :cond_12d
    return-void
.end method

.method private z()Landroidx/appcompat/widget/b1;
    .registers 6

    new-instance v0, Landroidx/appcompat/widget/b1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->f:Landroid/content/Context;

    iget v2, p0, Landroidx/appcompat/view/menu/b;->h:I

    iget v3, p0, Landroidx/appcompat/view/menu/b;->i:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/appcompat/widget/b1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->p:Landroidx/appcompat/widget/x0;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/b1;->P(Landroidx/appcompat/widget/x0;)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/w0;->H(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/w0;->G(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/w0;->z(Landroid/view/View;)V

    iget v1, p0, Landroidx/appcompat/view/menu/b;->r:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/w0;->C(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/w0;->F(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/w0;->E(I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/e;

    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/b;->F(Landroidx/appcompat/view/menu/e;)V

    goto :goto_d

    :cond_1d
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->s:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/view/menu/b;->t:Landroid/view/View;

    if-eqz v0, :cond_43

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->C:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/b;->C:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3c
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->t:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->o:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_43
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/e;Z)V
    .registers 8

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/b;->A(Landroidx/appcompat/view/menu/e;)I

    move-result v0

    if-gez v0, :cond_7

    return-void

    :cond_7
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/b$d;

    iget-object v1, v1, Landroidx/appcompat/view/menu/b$d;->b:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/e;->e(Z)V

    :cond_1f
    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/b$d;

    iget-object v1, v0, Landroidx/appcompat/view/menu/b$d;->b:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/e;->O(Landroidx/appcompat/view/menu/j;)V

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/b;->E:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    iget-object v1, v0, Landroidx/appcompat/view/menu/b$d;->a:Landroidx/appcompat/widget/b1;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b1;->O(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/appcompat/view/menu/b$d;->a:Landroidx/appcompat/widget/b1;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/w0;->A(I)V

    :cond_3b
    iget-object v0, v0, Landroidx/appcompat/view/menu/b$d;->a:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->dismiss()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_55

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/b$d;

    iget v1, v1, Landroidx/appcompat/view/menu/b$d;->c:I

    goto :goto_59

    :cond_55
    invoke-direct {p0}, Landroidx/appcompat/view/menu/b;->D()I

    move-result v1

    :goto_59
    iput v1, p0, Landroidx/appcompat/view/menu/b;->u:I

    if-nez v0, :cond_88

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b;->dismiss()V

    iget-object p2, p0, Landroidx/appcompat/view/menu/b;->B:Landroidx/appcompat/view/menu/j$a;

    if-eqz p2, :cond_68

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/j$a;->b(Landroidx/appcompat/view/menu/e;Z)V

    :cond_68
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->C:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_79

    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->C:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Landroidx/appcompat/view/menu/b;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_79
    iput-object v2, p0, Landroidx/appcompat/view/menu/b;->C:Landroid/view/ViewTreeObserver;

    :cond_7b
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->t:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/view/menu/b;->o:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->D:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_97

    :cond_88
    if-eqz p2, :cond_97

    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/b$d;

    iget-object p1, p1, Landroidx/appcompat/view/menu/b$d;->b:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/e;->e(Z)V

    :cond_97
    :goto_97
    return-void
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/b$d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/b$d;->a:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public dismiss()V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    new-array v2, v0, [Landroidx/appcompat/view/menu/b$d;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/appcompat/view/menu/b$d;

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_28

    aget-object v2, v1, v0

    iget-object v3, v2, Landroidx/appcompat/view/menu/b$d;->a:Landroidx/appcompat/widget/b1;

    invoke-virtual {v3}, Landroidx/appcompat/widget/w0;->c()Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v2, v2, Landroidx/appcompat/view/menu/b$d;->a:Landroidx/appcompat/widget/b1;

    invoke-virtual {v2}, Landroidx/appcompat/widget/w0;->dismiss()V

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_28
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/m;)Z
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/b$d;

    iget-object v3, v1, Landroidx/appcompat/view/menu/b$d;->b:Landroidx/appcompat/view/menu/e;

    if-ne p1, v3, :cond_6

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/b$d;->a()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    :cond_1f
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b;->l(Landroidx/appcompat/view/menu/e;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->B:Landroidx/appcompat/view/menu/j$a;

    if-eqz v0, :cond_2f

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/j$a;->c(Landroidx/appcompat/view/menu/e;)Z

    :cond_2f
    return v2

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public f(Z)V
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/b$d;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/b$d;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/h;->y(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d;->notifyDataSetChanged()V

    goto :goto_6

    :cond_22
    return-void
.end method

.method public g()Landroid/widget/ListView;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_1c

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/b$d;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/b$d;->a()Landroid/widget/ListView;

    move-result-object v0

    :goto_1c
    return-object v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroidx/appcompat/view/menu/j$a;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->B:Landroidx/appcompat/view/menu/j$a;

    return-void
.end method

.method public l(Landroidx/appcompat/view/menu/e;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->f:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/e;->c(Landroidx/appcompat/view/menu/j;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/b;->F(Landroidx/appcompat/view/menu/e;)V

    goto :goto_14

    :cond_f
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14
    return-void
.end method

.method protected m()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss()V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1e

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/b$d;

    iget-object v4, v3, Landroidx/appcompat/view/menu/b$d;->a:Landroidx/appcompat/widget/b1;

    invoke-virtual {v4}, Landroidx/appcompat/widget/w0;->c()Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    if-eqz v3, :cond_26

    iget-object v0, v3, Landroidx/appcompat/view/menu/b$d;->b:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/e;->e(Z)V

    :cond_26
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_f

    const/16 p1, 0x52

    if-ne p2, p1, :cond_f

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/b;->dismiss()V

    return p3

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public p(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->s:Landroid/view/View;

    if-eq v0, p1, :cond_12

    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->s:Landroid/view/View;

    iget v0, p0, Landroidx/appcompat/view/menu/b;->q:I

    invoke-static {p1}, Landroidx/core/view/h0;->n(Landroid/view/View;)I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/view/d;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/b;->r:I

    :cond_12
    return-void
.end method

.method public r(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/b;->z:Z

    return-void
.end method

.method public s(I)V
    .registers 3

    iget v0, p0, Landroidx/appcompat/view/menu/b;->q:I

    if-eq v0, p1, :cond_12

    iput p1, p0, Landroidx/appcompat/view/menu/b;->q:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->s:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/h0;->n(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/d;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/b;->r:I

    :cond_12
    return-void
.end method

.method public t(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/b;->v:Z

    iput p1, p0, Landroidx/appcompat/view/menu/b;->x:I

    return-void
.end method

.method public u(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->D:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public v(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/b;->A:Z

    return-void
.end method

.method public w(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/b;->w:Z

    iput p1, p0, Landroidx/appcompat/view/menu/b;->y:I

    return-void
.end method
