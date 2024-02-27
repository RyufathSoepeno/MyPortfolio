.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/s0;
.source "SourceFile"

# interfaces
.implements Lh/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$n;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$p;,
        Landroidx/appcompat/widget/SearchView$o;,
        Landroidx/appcompat/widget/SearchView$m;,
        Landroidx/appcompat/widget/SearchView$k;,
        Landroidx/appcompat/widget/SearchView$l;
    }
.end annotation


# static fields
.field static final u0:Landroidx/appcompat/widget/SearchView$n;


# instance fields
.field final A:Landroid/widget/ImageView;

.field private final B:Landroid/view/View;

.field private C:Landroidx/appcompat/widget/SearchView$p;

.field private D:Landroid/graphics/Rect;

.field private E:Landroid/graphics/Rect;

.field private F:[I

.field private G:[I

.field private final H:Landroid/widget/ImageView;

.field private final I:Landroid/graphics/drawable/Drawable;

.field private final J:I

.field private final K:I

.field private final L:Landroid/content/Intent;

.field private final M:Landroid/content/Intent;

.field private final N:Ljava/lang/CharSequence;

.field private O:Landroidx/appcompat/widget/SearchView$l;

.field private P:Landroidx/appcompat/widget/SearchView$k;

.field Q:Landroid/view/View$OnFocusChangeListener;

.field private R:Landroidx/appcompat/widget/SearchView$m;

.field private S:Landroid/view/View$OnClickListener;

.field private T:Z

.field private U:Z

.field V:Lr/a;

.field private W:Z

.field private a0:Ljava/lang/CharSequence;

.field private b0:Z

.field private c0:Z

.field private d0:I

.field private e0:Z

.field private f0:Ljava/lang/CharSequence;

.field private g0:Ljava/lang/CharSequence;

.field private h0:Z

.field private i0:I

.field j0:Landroid/app/SearchableInfo;

.field private k0:Landroid/os/Bundle;

.field private final l0:Ljava/lang/Runnable;

.field private m0:Ljava/lang/Runnable;

.field private final n0:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final o0:Landroid/view/View$OnClickListener;

.field p0:Landroid/view/View$OnKeyListener;

.field private final q0:Landroid/widget/TextView$OnEditorActionListener;

.field private final r0:Landroid/widget/AdapterView$OnItemClickListener;

.field private final s0:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private t0:Landroid/text/TextWatcher;

.field private final u:Landroid/view/View;

.field private final v:Landroid/view/View;

.field private final w:Landroid/view/View;

.field final x:Landroid/widget/ImageView;

.field final y:Landroid/widget/ImageView;

.field final z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_c

    new-instance v0, Landroidx/appcompat/widget/SearchView$n;

    invoke-direct {v0}, Landroidx/appcompat/widget/SearchView$n;-><init>()V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    sput-object v0, Landroidx/appcompat/widget/SearchView;->u0:Landroidx/appcompat/widget/SearchView$n;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lc/a;->G:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/s0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->D:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->E:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->F:[I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->G:[I

    new-instance v1, Landroidx/appcompat/widget/SearchView$b;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$b;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->l0:Ljava/lang/Runnable;

    new-instance v1, Landroidx/appcompat/widget/SearchView$c;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$c;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->m0:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->n0:Ljava/util/WeakHashMap;

    new-instance v1, Landroidx/appcompat/widget/SearchView$f;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$f;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->o0:Landroid/view/View$OnClickListener;

    new-instance v2, Landroidx/appcompat/widget/SearchView$g;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$g;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->p0:Landroid/view/View$OnKeyListener;

    new-instance v2, Landroidx/appcompat/widget/SearchView$h;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$h;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->q0:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v3, Landroidx/appcompat/widget/SearchView$i;

    invoke-direct {v3, v0}, Landroidx/appcompat/widget/SearchView$i;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v3, v0, Landroidx/appcompat/widget/SearchView;->r0:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v4, Landroidx/appcompat/widget/SearchView$j;

    invoke-direct {v4, v0}, Landroidx/appcompat/widget/SearchView$j;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v4, v0, Landroidx/appcompat/widget/SearchView;->s0:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v5, Landroidx/appcompat/widget/SearchView$a;

    invoke-direct {v5, v0}, Landroidx/appcompat/widget/SearchView$a;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v5, v0, Landroidx/appcompat/widget/SearchView;->t0:Landroid/text/TextWatcher;

    sget-object v5, Lc/j;->i2:[I

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v7, v8, v5, v9, v6}, Landroidx/appcompat/widget/m1;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/m1;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lc/j;->s2:I

    sget v9, Lc/g;->r:I

    invoke-virtual {v5, v8, v9}, Landroidx/appcompat/widget/m1;->m(II)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v7, Lc/f;->D:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v7, v0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Landroidx/appcompat/widget/SearchView;)V

    sget v8, Lc/f;->z:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/SearchView;->u:Landroid/view/View;

    sget v8, Lc/f;->C:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/SearchView;->v:Landroid/view/View;

    sget v10, Lc/f;->J:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v0, Landroidx/appcompat/widget/SearchView;->w:Landroid/view/View;

    sget v11, Lc/f;->x:I

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;

    sget v12, Lc/f;->A:I

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v0, Landroidx/appcompat/widget/SearchView;->y:Landroid/widget/ImageView;

    sget v13, Lc/f;->y:I

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Landroidx/appcompat/widget/SearchView;->z:Landroid/widget/ImageView;

    sget v14, Lc/f;->E:I

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Landroidx/appcompat/widget/SearchView;->A:Landroid/widget/ImageView;

    sget v15, Lc/f;->B:I

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iput-object v15, v0, Landroidx/appcompat/widget/SearchView;->H:Landroid/widget/ImageView;

    sget v9, Lc/j;->t2:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/m1;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9}, Landroidx/core/view/h0;->I(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget v8, Lc/j;->x2:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/m1;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v10, v8}, Landroidx/core/view/h0;->I(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget v8, Lc/j;->w2:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/m1;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v9, Lc/j;->q2:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/m1;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v9, Lc/j;->n2:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/m1;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v9, Lc/j;->z2:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/m1;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/m1;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v8, Lc/j;->v2:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/m1;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/SearchView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lc/h;->l:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroidx/appcompat/widget/p1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    sget v8, Lc/j;->y2:I

    sget v9, Lc/g;->q:I

    invoke-virtual {v5, v8, v9}, Landroidx/appcompat/widget/m1;->m(II)I

    move-result v8

    iput v8, v0, Landroidx/appcompat/widget/SearchView;->J:I

    sget v8, Lc/j;->o2:I

    invoke-virtual {v5, v8, v6}, Landroidx/appcompat/widget/m1;->m(II)I

    move-result v6

    iput v6, v0, Landroidx/appcompat/widget/SearchView;->K:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->t0:Landroid/text/TextWatcher;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {v7, v3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v7, v4}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->p0:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Landroidx/appcompat/widget/SearchView$d;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$d;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v1, Lc/j;->r2:I

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/m1;->a(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    sget v1, Lc/j;->k2:I

    const/4 v2, -0x1

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/m1;->e(II)I

    move-result v1

    if-eq v1, v2, :cond_173

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    :cond_173
    sget v1, Lc/j;->p2:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/m1;->o(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    sget v1, Lc/j;->u2:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/m1;->o(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->a0:Ljava/lang/CharSequence;

    sget v1, Lc/j;->m2:I

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/m1;->j(II)I

    move-result v1

    if-eq v1, v2, :cond_18e

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    :cond_18e
    sget v1, Lc/j;->l2:I

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/m1;->j(II)I

    move-result v1

    if-eq v1, v2, :cond_199

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    :cond_199
    sget v1, Lc/j;->j2:I

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/m1;->a(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v5}, Landroidx/appcompat/widget/m1;->v()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->L:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "web_search"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->M:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->B:Landroid/view/View;

    if-eqz v1, :cond_1db

    new-instance v2, Landroidx/appcompat/widget/SearchView$e;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1db
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView;->T:Z

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SearchView;->g0(Z)V

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->c0()V

    return-void
.end method

.method private A(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 12

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->k0:Landroid/os/Bundle;

    if-eqz v3, :cond_27

    const-string v4, "app_data"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_27
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_42

    :cond_40
    const-string v5, "free_form"

    :goto_42
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_52

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_53

    :cond_52
    move-object v6, v7

    :goto_53
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    if-eqz v8, :cond_62

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_63

    :cond_62
    move-object v4, v7

    :goto_63
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    if-eqz v8, :cond_6d

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result p1

    :cond_6d
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v3, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.PROMPT"

    invoke-virtual {v3, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v3, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_84

    goto :goto_88

    :cond_84
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    :goto_88
    const-string p1, "calling_package"

    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v3
.end method

.method private B(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_11
    const-string p2, "calling_package"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private C()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void
.end method

.method private E(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->F:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->G:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->F:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->G:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->T:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->I:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    goto :goto_34

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double v0, v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->I:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->I:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_34
    :goto_34
    return-object p1
.end method

.method private G()Z
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->L:Landroid/content/Intent;

    goto :goto_21

    :cond_17
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/content/Intent;

    :cond_21
    :goto_21
    if-eqz v0, :cond_34

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method static I(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private J()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->W:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->e0:Z

    if-eqz v0, :cond_10

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->H()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private K(Landroid/content/Intent;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_22

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchView"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method private M(IILjava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    invoke-virtual {v0}, Lr/a;->b()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/SearchView;->z(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->K(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method private X()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->l0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private Y(I)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    invoke-virtual {v1}, Lr/a;->b()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    invoke-virtual {p1, v1}, Lr/a;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_21
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :goto_24
    return-void
.end method

.method private a0()V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_19

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->T:Z

    if-eqz v3, :cond_18

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->h0:Z

    if-nez v3, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_19
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->z:Landroid/widget/ImageView;

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/16 v2, 0x8

    :goto_20
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->z:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_35

    if-eqz v0, :cond_30

    sget-object v0, Landroid/view/ViewGroup;->ENABLED_STATE_SET:[I

    goto :goto_32

    :cond_30
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    :goto_32
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_35
    return-void
.end method

.method private c0()V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_a

    const-string v0, ""

    :cond_a
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private d0()V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    const v1, -0x10001

    and-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    :cond_33
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    if-eqz v0, :cond_40

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr/a;->a(Landroid/database/Cursor;)V

    :cond_40
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    new-instance v0, Landroidx/appcompat/widget/g1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->n0:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v3, v4}, Landroidx/appcompat/widget/g1;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    check-cast v0, Landroidx/appcompat/widget/g1;

    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->b0:Z

    if-eqz v1, :cond_65

    const/4 v2, 0x2

    :cond_65
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/g1;->w(I)V

    :cond_68
    return-void
.end method

.method private e0()V
    .registers 3

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->J()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_1a

    :cond_18
    const/16 v0, 0x8

    :goto_1a
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private f0(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->W:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->J()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez p1, :cond_16

    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->e0:Z

    if-nez p1, :cond_18

    :cond_16
    const/4 p1, 0x0

    goto :goto_1a

    :cond_18
    const/16 p1, 0x8

    :goto_1a
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private g0(Z)V
    .registers 7

    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->U:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_9

    const/4 v2, 0x0

    goto :goto_b

    :cond_9
    const/16 v2, 0x8

    :goto_b
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v3}, Landroidx/appcompat/widget/SearchView;->f0(Z)V

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/view/View;

    if-eqz p1, :cond_26

    const/16 p1, 0x8

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->H:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_36

    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->T:Z

    if-eqz p1, :cond_38

    :cond_36
    const/16 v0, 0x8

    :cond_38
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->H:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->a0()V

    xor-int/lit8 p1, v3, 0x1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->h0(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->e0()V

    return-void
.end method

.method private getPreferredHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lc/d;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lc/d;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private h0(Z)V
    .registers 4

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->e0:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->H()Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    :cond_15
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 p1, 0x0

    goto :goto_13

    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_13
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private y(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_f

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_f
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g0:Ljava/lang/CharSequence;

    const-string p2, "user_query"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1d

    const-string p1, "query"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    if-eqz p3, :cond_24

    const-string p1, "intent_extra_data_key"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_24
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->k0:Landroid/os/Bundle;

    if-eqz p1, :cond_2d

    const-string p2, "app_data"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2d
    if-eqz p5, :cond_39

    const-string p1, "action_key"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_msg"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_39
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private z(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "suggest_intent_action"

    invoke-static {p1, v1}, Landroidx/appcompat/widget/g1;->n(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_f
    if-nez v1, :cond_13

    const-string v1, "android.intent.action.SEARCH"

    :cond_13
    move-object v2, v1

    const-string v1, "suggest_intent_data"

    invoke-static {p1, v1}, Landroidx/appcompat/widget/g1;->n(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v1

    :cond_22
    if-eqz v1, :cond_44

    const-string v3, "suggest_intent_data_id"

    invoke-static {p1, v3}, Landroidx/appcompat/widget/g1;->n(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_44

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_44
    if-nez v1, :cond_48

    move-object v3, v0

    goto :goto_4d

    :cond_48
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    :goto_4d
    const-string v1, "suggest_intent_query"

    invoke-static {p1, v1}, Landroidx/appcompat/widget/g1;->n(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "suggest_intent_extra_data"

    invoke-static {p1, v1}, Landroidx/appcompat/widget/g1;->n(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/widget/SearchView;->y(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_60} :catch_61

    return-object p1

    :catch_61
    move-exception p2

    :try_start_62
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_66} :catch_67

    goto :goto_68

    :catch_67
    const/4 p1, -0x1

    :goto_68
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search suggestions cursor at row "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned exception."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SearchView"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method D()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->refreshAutoCompleteResults()V

    goto :goto_18

    :cond_c
    sget-object v0, Landroidx/appcompat/widget/SearchView;->u0:Landroidx/appcompat/widget/SearchView$n;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$n;->b(Landroid/widget/AutoCompleteTextView;)V

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$n;->a(Landroid/widget/AutoCompleteTextView;)V

    :goto_18
    return-void
.end method

.method public H()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->U:Z

    return v0
.end method

.method L(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/SearchView;->y(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method N()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->T:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->P:Landroidx/appcompat/widget/SearchView$k;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroidx/appcompat/widget/SearchView$k;->a()Z

    move-result v0

    if-nez v0, :cond_33

    :cond_1b
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->g0(Z)V

    goto :goto_33

    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    :cond_33
    :goto_33
    return-void
.end method

.method O(IILjava/lang/String;)Z
    .registers 4

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->R:Landroidx/appcompat/widget/SearchView$m;

    const/4 p3, 0x0

    if-eqz p2, :cond_d

    invoke-interface {p2, p1}, Landroidx/appcompat/widget/SearchView$m;->b(I)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_d

    :cond_c
    return p3

    :cond_d
    :goto_d
    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Landroidx/appcompat/widget/SearchView;->M(IILjava/lang/String;)Z

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->C()V

    const/4 p1, 0x1

    return p1
.end method

.method P(I)Z
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Landroidx/appcompat/widget/SearchView$m;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SearchView$m;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->Y(I)V

    const/4 p1, 0x1

    return p1
.end method

.method Q(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method R()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->g0(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_16

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method S()V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_31

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$l;

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/SearchView$l;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    :cond_1c
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Landroidx/appcompat/widget/SearchView;->L(ILjava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->C()V

    :cond_31
    return-void
.end method

.method T(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    if-nez p1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_63

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_63

    const/16 p1, 0x42

    if-eq p2, p1, :cond_57

    const/16 p1, 0x54

    if-eq p2, p1, :cond_57

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_24

    goto :goto_57

    :cond_24
    const/16 p1, 0x15

    if-eq p2, p1, :cond_37

    const/16 p3, 0x16

    if-ne p2, p3, :cond_2d

    goto :goto_37

    :cond_2d
    const/16 p1, 0x13

    if-ne p2, p1, :cond_63

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    return v0

    :cond_37
    :goto_37
    if-ne p2, p1, :cond_3b

    const/4 p1, 0x0

    goto :goto_41

    :cond_3b
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    :goto_41
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->a()V

    const/4 p1, 0x1

    return p1

    :cond_57
    :goto_57
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/widget/SearchView;->O(IILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_63
    return v0
.end method

.method U(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->g0:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->f0(Z)V

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->h0(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->a0()V

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->e0()V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$l;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->f0:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$l;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/SearchView$l;->a(Ljava/lang/String;)Z

    :cond_31
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->f0:Ljava/lang/CharSequence;

    return-void
.end method

.method V()V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->H()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->g0(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->X()V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->D()V

    :cond_15
    return-void
.end method

.method W()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->L:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->B(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    :goto_11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2d

    :cond_19
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->A(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_25} :catch_26

    goto :goto_11

    :catch_26
    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return-void
.end method

.method public Z(Ljava/lang/CharSequence;Z)V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->g0:Ljava/lang/CharSequence;

    :cond_12
    if-eqz p2, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->S()V

    :cond_1d
    return-void
.end method

.method b0()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/view/ViewGroup;->FOCUSED_STATE_SET:[I

    goto :goto_d

    :cond_b
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    :goto_d
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_18
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public clearFocus()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->c0:Z

    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->c0:Z

    return-void
.end method

.method public getImeOptions()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/SearchView;->d0:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a0:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    goto :goto_20

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_20

    :cond_1e
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    :goto_20
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/SearchView;->K:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/SearchView;->J:I

    return v0
.end method

.method public getSuggestionsAdapter()Lr/a;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    return-object v0
.end method

.method public onActionViewCollapsed()V
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SearchView;->Z(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->g0(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroidx/appcompat/widget/SearchView;->i0:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->h0:Z

    return-void
.end method

.method public onActionViewExpanded()V
    .registers 4

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->h0:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->h0:Z

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView;->i0:I

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->l0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->m0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/s0;->onLayout(ZIIII)V

    if-eqz p1, :cond_35

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->D:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;->E(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->E:Landroid/graphics/Rect;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->D:Landroid/graphics/Rect;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, v0, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->C:Landroidx/appcompat/widget/SearchView$p;

    if-nez p1, :cond_2e

    new-instance p1, Landroidx/appcompat/widget/SearchView$p;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->E:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->D:Landroid/graphics/Rect;

    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Landroidx/appcompat/widget/SearchView$p;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->C:Landroidx/appcompat/widget/SearchView$p;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_35

    :cond_2e
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->E:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->D:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/SearchView$p;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_35
    :goto_35
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->H()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/s0;->onMeasure(II)V

    return-void

    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2c

    if-eqz v0, :cond_22

    if-eq v0, v2, :cond_1d

    goto :goto_39

    :cond_1d
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->d0:I

    if-lez v0, :cond_39

    goto :goto_30

    :cond_22
    iget p1, p0, Landroidx/appcompat/widget/SearchView;->d0:I

    if-lez p1, :cond_27

    goto :goto_39

    :cond_27
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_39

    :cond_2c
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->d0:I

    if-lez v0, :cond_31

    :goto_30
    goto :goto_35

    :cond_31
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v0

    :goto_35
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_39
    :goto_39
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v1, :cond_4b

    if-eqz v0, :cond_46

    goto :goto_53

    :cond_46
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result p2

    goto :goto_53

    :cond_4b
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_53
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/s0;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$o;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Landroidx/appcompat/widget/SearchView$o;

    invoke-virtual {p1}, Ls/a;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Landroidx/appcompat/widget/SearchView$o;->g:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->g0(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/SearchView$o;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$o;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->H()Z

    move-result v0

    iput-boolean v0, v1, Landroidx/appcompat/widget/SearchView$o;->g:Z

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->X()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 5

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->c0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->H()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->g0(Z)V

    :cond_1e
    return p1

    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->k0:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->N()V

    goto :goto_9

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->R()V

    :goto_9
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->T:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->T:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->g0(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->c0()V

    return-void
.end method

.method public setImeOptions(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/SearchView;->d0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$k;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->P:Landroidx/appcompat/widget/SearchView$k;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$l;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->S:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$m;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->R:Landroidx/appcompat/widget/SearchView$m;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->a0:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->c0()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .registers 4

    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->b0:Z

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    instance-of v1, v0, Landroidx/appcompat/widget/g1;

    if-eqz v1, :cond_12

    check-cast v0, Landroidx/appcompat/widget/g1;

    if-eqz p1, :cond_e

    const/4 p1, 0x2

    goto :goto_f

    :cond_e
    const/4 p1, 0x1

    :goto_f
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/g1;->w(I)V

    :cond_12
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->j0:Landroid/app/SearchableInfo;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->d0()V

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->c0()V

    :cond_a
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->G()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->e0:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v0, "nm"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->H()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->g0(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->W:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->H()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->g0(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Lr/a;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->V:Lr/a;

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method x()V
    .registers 7

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5d

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0}, Landroidx/appcompat/widget/t1;->b(Landroid/view/View;)Z

    move-result v3

    iget-boolean v4, p0, Landroidx/appcompat/widget/SearchView;->T:Z

    if-eqz v4, :cond_32

    sget v4, Lc/d;->e:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lc/d;->f:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    :goto_33
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_42

    neg-int v0, v0

    goto :goto_45

    :cond_42
    add-int/2addr v0, v4

    sub-int v0, v1, v0

    :goto_45
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    :cond_5d
    return-void
.end method
