.class final Landroidx/appcompat/view/menu/l;
.super Landroidx/appcompat/view/menu/h;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final z:I


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Landroidx/appcompat/view/menu/e;

.field private final h:Landroidx/appcompat/view/menu/d;

.field private final i:Z

.field private final j:I

.field private final k:I

.field private final l:I

.field final m:Landroidx/appcompat/widget/b1;

.field final n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final o:Landroid/view/View$OnAttachStateChangeListener;

.field private p:Landroid/widget/PopupWindow$OnDismissListener;

.field private q:Landroid/view/View;

.field r:Landroid/view/View;

.field private s:Landroidx/appcompat/view/menu/j$a;

.field t:Landroid/view/ViewTreeObserver;

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lc/g;->m:I

    sput v0, Landroidx/appcompat/view/menu/l;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/e;Landroid/view/View;IIZ)V
    .registers 10

    invoke-direct {p0}, Landroidx/appcompat/view/menu/h;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/l$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l$a;-><init>(Landroidx/appcompat/view/menu/l;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Landroidx/appcompat/view/menu/l$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/l$b;-><init>(Landroidx/appcompat/view/menu/l;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->o:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/l;->x:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/l;->g:Landroidx/appcompat/view/menu/e;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/l;->i:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/d;

    sget v2, Landroidx/appcompat/view/menu/l;->z:I

    invoke-direct {v1, p2, v0, p6, v2}, Landroidx/appcompat/view/menu/d;-><init>(Landroidx/appcompat/view/menu/e;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/l;->h:Landroidx/appcompat/view/menu/d;

    iput p4, p0, Landroidx/appcompat/view/menu/l;->k:I

    iput p5, p0, Landroidx/appcompat/view/menu/l;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lc/d;->d:I

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Landroidx/appcompat/view/menu/l;->j:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/l;->q:Landroid/view/View;

    new-instance p3, Landroidx/appcompat/widget/b1;

    const/4 p6, 0x0

    invoke-direct {p3, p1, p6, p4, p5}, Landroidx/appcompat/widget/b1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/view/menu/e;->c(Landroidx/appcompat/view/menu/j;Landroid/content/Context;)V

    return-void
.end method

.method private z()Z
    .registers 8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/l;->u:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c3

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->q:Landroid/view/View;

    if-nez v0, :cond_13

    goto/16 :goto_c3

    :cond_13
    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->r:Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/w0;->G(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/w0;->H(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/w0;->F(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->r:Landroid/view/View;

    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->t:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/l;->t:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3a
    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->o:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/w0;->z(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    iget v3, p0, Landroidx/appcompat/view/menu/l;->x:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/w0;->C(I)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/l;->v:Z

    const/4 v3, 0x0

    if-nez v0, :cond_5e

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->h:Landroidx/appcompat/view/menu/d;

    iget-object v4, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/content/Context;

    iget v5, p0, Landroidx/appcompat/view/menu/l;->j:I

    invoke-static {v0, v3, v4, v5}, Landroidx/appcompat/view/menu/h;->o(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/l;->w:I

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/l;->v:Z

    :cond_5e
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    iget v4, p0, Landroidx/appcompat/view/menu/l;->w:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/w0;->B(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/w0;->E(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/h;->n()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/w0;->D(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->a()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->g()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/l;->y:Z

    if-eqz v4, :cond_b6

    iget-object v4, p0, Landroidx/appcompat/view/menu/l;->g:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/e;->x()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_b6

    iget-object v4, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lc/g;->l:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_b0

    iget-object v6, p0, Landroidx/appcompat/view/menu/l;->g:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/e;->x()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b0
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_b6
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/l;->h:Landroidx/appcompat/view/menu/d;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/w0;->p(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->a()V

    return v1

    :cond_c3
    :goto_c3
    return v2
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-direct {p0}, Landroidx/appcompat/view/menu/l;->z()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroidx/appcompat/view/menu/e;Z)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->g:Landroidx/appcompat/view/menu/e;

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->dismiss()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->s:Landroidx/appcompat/view/menu/j$a;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/j$a;->b(Landroidx/appcompat/view/menu/e;Z)V

    :cond_f
    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/l;->u:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public dismiss()V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->dismiss()V

    :cond_b
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/m;)Z
    .registers 11

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    new-instance v0, Landroidx/appcompat/view/menu/i;

    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->f:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/view/menu/l;->r:Landroid/view/View;

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/l;->i:Z

    iget v7, p0, Landroidx/appcompat/view/menu/l;->k:I

    iget v8, p0, Landroidx/appcompat/view/menu/l;->l:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/e;Landroid/view/View;ZII)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/l;->s:Landroidx/appcompat/view/menu/j$a;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/i;->j(Landroidx/appcompat/view/menu/j$a;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/h;->x(Landroidx/appcompat/view/menu/e;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/i;->g(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/l;->p:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/i;->i(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/appcompat/view/menu/l;->p:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Landroidx/appcompat/view/menu/l;->g:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/e;->e(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v2}, Landroidx/appcompat/widget/w0;->d()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v3}, Landroidx/appcompat/widget/w0;->n()I

    move-result v3

    iget v4, p0, Landroidx/appcompat/view/menu/l;->x:I

    iget-object v5, p0, Landroidx/appcompat/view/menu/l;->q:Landroid/view/View;

    invoke-static {v5}, Landroidx/core/view/h0;->n(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_55

    iget-object v4, p0, Landroidx/appcompat/view/menu/l;->q:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    :cond_55
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/i;->n(II)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->s:Landroidx/appcompat/view/menu/j$a;

    if-eqz v0, :cond_62

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/j$a;->c(Landroidx/appcompat/view/menu/e;)Z

    :cond_62
    const/4 p1, 0x1

    return p1

    :cond_64
    return v1
.end method

.method public f(Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/l;->v:Z

    iget-object p1, p0, Landroidx/appcompat/view/menu/l;->h:Landroidx/appcompat/view/menu/d;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/d;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method

.method public g()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w0;->g()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroidx/appcompat/view/menu/j$a;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->s:Landroidx/appcompat/view/menu/j$a;

    return-void
.end method

.method public l(Landroidx/appcompat/view/menu/e;)V
    .registers 2

    return-void
.end method

.method public onDismiss()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/l;->u:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->g:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->close()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->t:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->t:Landroid/view/ViewTreeObserver;

    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->t:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/l;->t:Landroid/view/ViewTreeObserver;

    :cond_24
    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->r:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l;->o:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->p:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_32

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_32
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

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/l;->dismiss()V

    return p3

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public p(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->q:Landroid/view/View;

    return-void
.end method

.method public r(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->h:Landroidx/appcompat/view/menu/d;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/d;->d(Z)V

    return-void
.end method

.method public s(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/view/menu/l;->x:I

    return-void
.end method

.method public t(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/w0;->l(I)V

    return-void
.end method

.method public u(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/view/menu/l;->p:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public v(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/l;->y:Z

    return-void
.end method

.method public w(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/l;->m:Landroidx/appcompat/widget/b1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/w0;->j(I)V

    return-void
.end method
