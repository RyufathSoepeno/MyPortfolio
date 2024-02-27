.class Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$h;,
        Landroidx/appcompat/app/AlertController$f;,
        Landroidx/appcompat/app/AlertController$RecycleListView;,
        Landroidx/appcompat/app/AlertController$g;
    }
.end annotation


# instance fields
.field A:Landroidx/core/widget/NestedScrollView;

.field private B:I

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/view/View;

.field H:Landroid/widget/ListAdapter;

.field I:I

.field private J:I

.field private K:I

.field L:I

.field M:I

.field N:I

.field O:I

.field private P:Z

.field private Q:I

.field R:Landroid/os/Handler;

.field private final S:Landroid/view/View$OnClickListener;

.field private final a:Landroid/content/Context;

.field final b:Ld/i;

.field private final c:Landroid/view/Window;

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field o:Landroid/widget/Button;

.field private p:Ljava/lang/CharSequence;

.field q:Landroid/os/Message;

.field private r:Landroid/graphics/drawable/Drawable;

.field s:Landroid/widget/Button;

.field private t:Ljava/lang/CharSequence;

.field u:Landroid/os/Message;

.field private v:Landroid/graphics/drawable/Drawable;

.field w:Landroid/widget/Button;

.field private x:Ljava/lang/CharSequence;

.field y:Landroid/os/Message;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/i;Landroid/view/Window;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController;->n:Z

    iput v0, p0, Landroidx/appcompat/app/AlertController;->B:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/app/AlertController;->I:I

    iput v0, p0, Landroidx/appcompat/app/AlertController;->Q:I

    new-instance v1, Landroidx/appcompat/app/AlertController$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertController$a;-><init>(Landroidx/appcompat/app/AlertController;)V

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->b:Ld/i;

    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    new-instance p3, Landroidx/appcompat/app/AlertController$g;

    invoke-direct {p3, p2}, Landroidx/appcompat/app/AlertController$g;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->R:Landroid/os/Handler;

    sget-object p3, Lc/j;->F:[I

    sget v1, Lc/a;->n:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p3, Lc/j;->G:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->J:I

    sget p3, Lc/j;->I:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->K:I

    sget p3, Lc/j;->K:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->L:I

    sget p3, Lc/j;->L:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->M:I

    sget p3, Lc/j;->N:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->N:I

    sget p3, Lc/j;->J:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->O:I

    sget p3, Lc/j;->M:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/app/AlertController;->P:Z

    sget p3, Lc/j;->H:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2, v1}, Ld/i;->d(I)Z

    return-void
.end method

.method static a(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_14
    if-lez v0, :cond_23

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v1

    :cond_23
    return v2
.end method

.method private b(Landroid/widget/Button;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static f(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_11

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    const/4 v2, 0x4

    :goto_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz p2, :cond_1f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x4

    :goto_1c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method

.method private i(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5

    if-nez p1, :cond_f

    instance-of p1, p2, Landroid/view/ViewStub;

    if-eqz p1, :cond_c

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    :cond_c
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_f
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1e

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_28

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_28
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private j()I
    .registers 4

    iget v0, p0, Landroidx/appcompat/app/AlertController;->K:I

    if-nez v0, :cond_7

    iget v0, p0, Landroidx/appcompat/app/AlertController;->J:I

    return v0

    :cond_7
    iget v1, p0, Landroidx/appcompat/app/AlertController;->Q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    return v0

    :cond_d
    iget v0, p0, Landroidx/appcompat/app/AlertController;->J:I

    return v0
.end method

.method private p(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 9

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lc/f;->v:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lc/f;->u:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_24

    invoke-static {p2, p3, p4}, Landroidx/core/view/h0;->O(Landroid/view/View;II)V

    if-eqz v0, :cond_1e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    if-eqz v1, :cond_72

    :goto_20
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_72

    :cond_24
    const/4 p2, 0x0

    if-eqz v0, :cond_2f

    and-int/lit8 p4, p3, 0x1

    if-nez p4, :cond_2f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v0, p2

    :cond_2f
    if-eqz v1, :cond_39

    and-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_39

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, p2

    :cond_39
    if-nez v0, :cond_3d

    if-eqz v1, :cond_72

    :cond_3d
    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz p2, :cond_56

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Landroidx/appcompat/app/AlertController$b;

    invoke-direct {p2, p0, v0, v1}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$c;)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Landroidx/appcompat/app/AlertController$c;

    invoke-direct {p2, p0, v0, v1}, Landroidx/appcompat/app/AlertController$c;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    :goto_52
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_72

    :cond_56
    iget-object p2, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz p2, :cond_6a

    new-instance p1, Landroidx/appcompat/app/AlertController$d;

    invoke-direct {p1, p0, v0, v1}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance p2, Landroidx/appcompat/app/AlertController$e;

    invoke-direct {p2, p0, v0, v1}, Landroidx/appcompat/app/AlertController$e;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    goto :goto_52

    :cond_6a
    if-eqz v0, :cond_6f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6f
    if-eqz v1, :cond_72

    goto :goto_20

    :cond_72
    :goto_72
    return-void
.end method

.method private u(Landroid/view/ViewGroup;)V
    .registers 9

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_28

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    goto :goto_45

    :cond_28
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3f

    iget v5, p0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3f
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    :goto_45
    const v5, 0x102001a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_67

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_67

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_85

    :cond_67
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7e

    iget v6, p0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_7e
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_85
    const v5, 0x102001b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a7

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_a7

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c5

    :cond_a7
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_be

    iget v6, p0, Landroidx/appcompat/app/AlertController;->d:I

    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_be
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    :goto_c5
    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->z(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e1

    if-ne v0, v1, :cond_d5

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->o:Landroid/widget/Button;

    :goto_d1
    invoke-direct {p0, v3}, Landroidx/appcompat/app/AlertController;->b(Landroid/widget/Button;)V

    goto :goto_e1

    :cond_d5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_db

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->s:Landroid/widget/Button;

    goto :goto_d1

    :cond_db
    const/4 v3, 0x4

    if-ne v0, v3, :cond_e1

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->w:Landroid/widget/Button;

    goto :goto_d1

    :cond_e1
    :goto_e1
    if-eqz v0, :cond_e4

    goto :goto_e5

    :cond_e4
    const/4 v1, 0x0

    :goto_e5
    if-nez v1, :cond_ea

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_ea
    return-void
.end method

.method private v(Landroid/view/ViewGroup;)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lc/f;->w:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-nez v0, :cond_23

    return-void

    :cond_23
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b

    :cond_2b
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_58

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5b

    :cond_58
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5b
    return-void
.end method

.method private w(Landroid/view/ViewGroup;)V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    goto :goto_18

    :cond_6
    iget v0, p0, Landroidx/appcompat/app/AlertController;->i:I

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Landroidx/appcompat/app/AlertController;->i:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    if-eqz v1, :cond_23

    invoke-static {v0}, Landroidx/appcompat/app/AlertController;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2a

    :cond_23
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_2a
    if-eqz v1, :cond_5c

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lc/f;->n:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->n:Z

    if-eqz v0, :cond_4e

    iget v0, p0, Landroidx/appcompat/app/AlertController;->j:I

    iget v2, p0, Landroidx/appcompat/app/AlertController;->k:I

    iget v3, p0, Landroidx/appcompat/app/AlertController;->l:I

    iget v4, p0, Landroidx/appcompat/app/AlertController;->m:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_4e
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_61

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/s0$a;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/appcompat/widget/s0$a;->a:F

    goto :goto_61

    :cond_5c
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_61
    :goto_61
    return-void
.end method

.method private x(Landroid/view/ViewGroup;)V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_20

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v0, Lc/f;->O:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_1b
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_94

    :cond_20
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_83

    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->P:Z

    if-eqz v0, :cond_83

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v0, Lc/f;->j:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Landroidx/appcompat/app/AlertController;->B:I

    if-eqz p1, :cond_56

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_94

    :cond_56
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_60

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_94

    :cond_60
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_94

    :cond_83
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v2, Lc/f;->O:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b

    :goto_94
    return-void
.end method

.method private y()V
    .registers 10

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->c:Landroid/view/Window;

    sget v1, Lc/f;->t:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lc/f;->P:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lc/f;->m:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lc/f;->k:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget v7, Lc/f;->o:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->w(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/app/AlertController;->i(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/app/AlertController;->i(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {p0, v5, v6}, Landroidx/appcompat/app/AlertController;->i(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v2}, Landroidx/appcompat/app/AlertController;->v(Landroid/view/ViewGroup;)V

    invoke-direct {p0, v3}, Landroidx/appcompat/app/AlertController;->u(Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Landroidx/appcompat/app/AlertController;->x(Landroid/view/ViewGroup;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v4, :cond_52

    const/4 v0, 0x1

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_5d

    const/4 v7, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v7, 0x0

    :goto_5e
    if-eqz v3, :cond_68

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_68

    const/4 v3, 0x1

    goto :goto_69

    :cond_68
    const/4 v3, 0x0

    :goto_69
    if-nez v3, :cond_78

    if-eqz v2, :cond_78

    sget v4, Lc/f;->K:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_78

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_78
    if-eqz v7, :cond_96

    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_81

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_81
    const/4 v4, 0x0

    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    if-nez v8, :cond_8a

    iget-object v8, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v8, :cond_90

    :cond_8a
    sget v4, Lc/f;->N:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :cond_90
    if-eqz v4, :cond_a3

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a3

    :cond_96
    if-eqz v2, :cond_a3

    sget v1, Lc/f;->L:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a3

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a3
    :goto_a3
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    instance-of v4, v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v4, :cond_ae

    check-cast v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v1, v7, v3}, Landroidx/appcompat/app/AlertController$RecycleListView;->a(ZZ)V

    :cond_ae
    if-nez v0, :cond_c2

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_b5

    goto :goto_b7

    :cond_b5
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    :goto_b7
    if-eqz v0, :cond_c2

    if-eqz v3, :cond_bc

    const/4 v6, 0x2

    :cond_bc
    or-int v1, v7, v6

    const/4 v3, 0x3

    invoke-direct {p0, v2, v0, v1, v3}, Landroidx/appcompat/app/AlertController;->p(Landroid/view/ViewGroup;Landroid/view/View;II)V

    :cond_c2
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_d8

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->H:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_d8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, p0, Landroidx/appcompat/app/AlertController;->I:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_d8

    invoke-virtual {v0, v1, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_d8
    return-void
.end method

.method private static z(Landroid/content/Context;)Z
    .registers 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lc/a;->m:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method


# virtual methods
.method public c(I)I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public d()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public e()V
    .registers 3

    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->j()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->b:Ld/i;

    invoke-virtual {v1, v0}, Ld/i;->setContentView(I)V

    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->y()V

    return-void
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->s(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public h(ILandroid/view/KeyEvent;)Z
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->A:Landroidx/core/widget/NestedScrollView;

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->s(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public k(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    iget-object p4, p0, Landroidx/appcompat/app/AlertController;->R:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_a
    const/4 p3, -0x3

    if-eq p1, p3, :cond_29

    const/4 p3, -0x2

    if-eq p1, p3, :cond_22

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1a

    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->p:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->q:Landroid/os/Message;

    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_2f

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->t:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->u:Landroid/os/Message;

    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->v:Landroid/graphics/drawable/Drawable;

    goto :goto_2f

    :cond_29
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->x:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->y:Landroid/os/Message;

    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->z:Landroid/graphics/drawable/Drawable;

    :goto_2f
    return-void
.end method

.method public l(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->G:Landroid/view/View;

    return-void
.end method

.method public m(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroidx/appcompat/app/AlertController;->B:I

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    iget v0, p0, Landroidx/appcompat/app/AlertController;->B:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    :cond_17
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public n(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->C:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AlertController;->B:I

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    if-eqz v1, :cond_19

    if-eqz p1, :cond_14

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    :cond_14
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_19
    :goto_19
    return-void
.end method

.method public o(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public q(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->E:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public r(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    iput p1, p0, Landroidx/appcompat/app/AlertController;->i:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->n:Z

    return-void
.end method

.method public s(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/app/AlertController;->i:I

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->n:Z

    return-void
.end method

.method public t(Landroid/view/View;IIII)V
    .registers 6

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/app/AlertController;->i:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->n:Z

    iput p2, p0, Landroidx/appcompat/app/AlertController;->j:I

    iput p3, p0, Landroidx/appcompat/app/AlertController;->k:I

    iput p4, p0, Landroidx/appcompat/app/AlertController;->l:I

    iput p5, p0, Landroidx/appcompat/app/AlertController;->m:I

    return-void
.end method
