.class public Lio/flutter/view/f;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/f$l;,
        Lio/flutter/view/f$j;,
        Lio/flutter/view/f$m;,
        Lio/flutter/view/f$n;,
        Lio/flutter/view/f$o;,
        Lio/flutter/view/f$h;,
        Lio/flutter/view/f$p;,
        Lio/flutter/view/f$f;,
        Lio/flutter/view/f$i;,
        Lio/flutter/view/f$g;,
        Lio/flutter/view/f$k;
    }
.end annotation


# static fields
.field private static final A:I

.field private static B:I

.field private static final z:I


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lr0/a;

.field private final c:Landroid/view/accessibility/AccessibilityManager;

.field private final d:Lio/flutter/view/AccessibilityViewEmbedder;

.field private final e:Lio/flutter/plugin/platform/p;

.field private final f:Landroid/content/ContentResolver;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/f$l;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/f$h;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lio/flutter/view/f$l;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:I

.field private m:Lio/flutter/view/f$l;

.field private n:Lio/flutter/view/f$l;

.field private o:Lio/flutter/view/f$l;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Ljava/lang/Integer;

.field private s:Lio/flutter/view/f$k;

.field private t:Z

.field private u:Z

.field private final v:Lr0/a$b;

.field private final w:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private final x:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field private final y:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lio/flutter/view/f$g;->i:Lio/flutter/view/f$g;

    iget v0, v0, Lio/flutter/view/f$g;->e:I

    sget-object v1, Lio/flutter/view/f$g;->h:Lio/flutter/view/f$g;

    iget v1, v1, Lio/flutter/view/f$g;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$g;->j:Lio/flutter/view/f$g;

    iget v1, v1, Lio/flutter/view/f$g;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$g;->k:Lio/flutter/view/f$g;

    iget v1, v1, Lio/flutter/view/f$g;->e:I

    or-int/2addr v0, v1

    sput v0, Lio/flutter/view/f;->z:I

    sget-object v0, Lio/flutter/view/f$i;->f:Lio/flutter/view/f$i;

    iget v0, v0, Lio/flutter/view/f$i;->e:I

    sget-object v1, Lio/flutter/view/f$i;->g:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$i;->h:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$i;->j:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$i;->k:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$i;->l:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$i;->m:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$i;->n:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$i;->v:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$i;->w:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$i;->A:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sget-object v1, Lio/flutter/view/f$i;->C:Lio/flutter/view/f$i;

    iget v1, v1, Lio/flutter/view/f$i;->e:I

    or-int/2addr v0, v1

    sput v0, Lio/flutter/view/f;->A:I

    const v0, 0xff00001

    sput v0, Lio/flutter/view/f;->B:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lr0/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/p;)V
    .registers 13

    new-instance v5, Lio/flutter/view/AccessibilityViewEmbedder;

    const/high16 v0, 0x10000

    invoke-direct {v5, p1, v0}, Lio/flutter/view/AccessibilityViewEmbedder;-><init>(Landroid/view/View;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/flutter/view/f;-><init>(Landroid/view/View;Lr0/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/p;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lr0/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/p;)V
    .registers 11

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/f;->h:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/view/f;->l:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/flutter/view/f;->p:Ljava/util/List;

    iput v0, p0, Lio/flutter/view/f;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/f;->r:Ljava/lang/Integer;

    iput-boolean v0, p0, Lio/flutter/view/f;->t:Z

    iput-boolean v0, p0, Lio/flutter/view/f;->u:Z

    new-instance v1, Lio/flutter/view/f$a;

    invoke-direct {v1, p0}, Lio/flutter/view/f$a;-><init>(Lio/flutter/view/f;)V

    iput-object v1, p0, Lio/flutter/view/f;->v:Lr0/a$b;

    new-instance v1, Lio/flutter/view/f$b;

    invoke-direct {v1, p0}, Lio/flutter/view/f$b;-><init>(Lio/flutter/view/f;)V

    iput-object v1, p0, Lio/flutter/view/f;->w:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    new-instance v2, Lio/flutter/view/f$c;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lio/flutter/view/f$c;-><init>(Lio/flutter/view/f;Landroid/os/Handler;)V

    iput-object v2, p0, Lio/flutter/view/f;->y:Landroid/database/ContentObserver;

    iput-object p1, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    iput-object p2, p0, Lio/flutter/view/f;->b:Lr0/a;

    iput-object p3, p0, Lio/flutter/view/f;->c:Landroid/view/accessibility/AccessibilityManager;

    iput-object p4, p0, Lio/flutter/view/f;->f:Landroid/content/ContentResolver;

    iput-object p5, p0, Lio/flutter/view/f;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    iput-object p6, p0, Lio/flutter/view/f;->e:Lio/flutter/plugin/platform/p;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    invoke-interface {v1, p1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance p2, Lio/flutter/view/f$d;

    invoke-direct {p2, p0, p3}, Lio/flutter/view/f$d;-><init>(Lio/flutter/view/f;Landroid/view/accessibility/AccessibilityManager;)V

    iput-object p2, p0, Lio/flutter/view/f;->x:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p5

    invoke-interface {p2, p5}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    invoke-virtual {v2, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p2, "transition_animation_scale"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p4, p2, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_7d

    invoke-direct {p0}, Lio/flutter/view/f;->X()V

    :cond_7d
    invoke-interface {p6, p0}, Lio/flutter/plugin/platform/p;->a(Lio/flutter/view/f;)V

    return-void
.end method

.method private A()Lio/flutter/view/f$l;
    .registers 3

    iget-object v0, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/f$l;

    return-object v0
.end method

.method private B(FFZ)V
    .registers 7

    iget-object v0, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lio/flutter/view/f;->A()Lio/flutter/view/f$l;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput p2, v1, p1

    const/4 p1, 0x3

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v1, p1

    invoke-static {v0, v1, p3}, Lio/flutter/view/f$l;->J(Lio/flutter/view/f$l;[FZ)Lio/flutter/view/f$l;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/view/f;->o:Lio/flutter/view/f$l;

    if-eq p1, p2, :cond_41

    if-eqz p1, :cond_32

    invoke-static {p1}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p2

    const/16 p3, 0x80

    invoke-virtual {p0, p2, p3}, Lio/flutter/view/f;->R(II)V

    :cond_32
    iget-object p2, p0, Lio/flutter/view/f;->o:Lio/flutter/view/f$l;

    if-eqz p2, :cond_3f

    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p2

    const/16 p3, 0x100

    invoke-virtual {p0, p2, p3}, Lio/flutter/view/f;->R(II)V

    :cond_3f
    iput-object p1, p0, Lio/flutter/view/f;->o:Lio/flutter/view/f$l;

    :cond_41
    return-void
.end method

.method private static synthetic E(Lio/flutter/view/f$l;Lio/flutter/view/f$l;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private static synthetic F(Lio/flutter/view/f$l;)Z
    .registers 2

    sget-object v0, Lio/flutter/view/f$i;->x:Lio/flutter/view/f$i;

    invoke-static {p0, v0}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result p0

    return p0
.end method

.method private H(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    invoke-virtual {p0, p2}, Lio/flutter/view/f;->G(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    iget-object v0, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    return-object p2
.end method

.method private L()V
    .registers 3

    iget-object v0, p0, Lio/flutter/view/f;->o:Lio/flutter/view/f$l;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v0

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lio/flutter/view/f;->R(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/view/f;->o:Lio/flutter/view/f$l;

    :cond_10
    return-void
.end method

.method private M(Lio/flutter/view/f$l;)V
    .registers 5

    invoke-static {p1}, Lio/flutter/view/f$l;->d0(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, " "

    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_12

    invoke-direct {p0, v0}, Lio/flutter/view/f;->V(Ljava/lang/String;)V

    goto :goto_26

    :cond_12
    invoke-static {p1}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p1

    const/16 v1, 0x20

    invoke-direct {p0, p1, v1}, Lio/flutter/view/f;->H(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lio/flutter/view/f;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_26
    return-void
.end method

.method private N(Lio/flutter/view/f$l;ILandroid/os/Bundle;Z)Z
    .registers 9

    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p1}, Lio/flutter/view/f$l;->i(Lio/flutter/view/f$l;)I

    move-result v1

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v2

    invoke-direct {p0, p1, v0, p4, p3}, Lio/flutter/view/f;->P(Lio/flutter/view/f$l;IZZ)V

    invoke-static {p1}, Lio/flutter/view/f$l;->i(Lio/flutter/view/f$l;)I

    move-result v3

    if-ne v1, v3, :cond_23

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v1

    if-eq v2, v1, :cond_59

    :cond_23
    invoke-static {p1}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-static {p1}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :cond_2e
    const-string v1, ""

    :goto_30
    invoke-static {p1}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v2

    const/16 v3, 0x2000

    invoke-direct {p0, v2, v3}, Lio/flutter/view/f;->H(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lio/flutter/view/f$l;->i(Lio/flutter/view/f$l;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    invoke-direct {p0, v2}, Lio/flutter/view/f;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_59
    const/4 v1, 0x1

    if-eq v0, v1, :cond_94

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6c

    const/4 p1, 0x4

    if-eq v0, p1, :cond_6b

    const/16 p1, 0x8

    if-eq v0, p1, :cond_6b

    const/16 p1, 0x10

    if-eq v0, p1, :cond_6b

    goto :goto_bc

    :cond_6b
    return v1

    :cond_6c
    if-eqz p4, :cond_80

    sget-object v0, Lio/flutter/view/f$g;->y:Lio/flutter/view/f$g;

    invoke-static {p1, v0}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object p1, p0, Lio/flutter/view/f;->b:Lr0/a;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3}, Lr0/a;->c(ILio/flutter/view/f$g;Ljava/lang/Object;)V

    return v1

    :cond_80
    if-nez p4, :cond_bc

    sget-object p4, Lio/flutter/view/f$g;->z:Lio/flutter/view/f$g;

    invoke-static {p1, p4}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result p1

    if-eqz p1, :cond_bc

    iget-object p1, p0, Lio/flutter/view/f;->b:Lr0/a;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lr0/a;->c(ILio/flutter/view/f$g;Ljava/lang/Object;)V

    return v1

    :cond_94
    if-eqz p4, :cond_a8

    sget-object v0, Lio/flutter/view/f$g;->o:Lio/flutter/view/f$g;

    invoke-static {p1, v0}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v2

    if-eqz v2, :cond_a8

    iget-object p1, p0, Lio/flutter/view/f;->b:Lr0/a;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, v0, p3}, Lr0/a;->c(ILio/flutter/view/f$g;Ljava/lang/Object;)V

    return v1

    :cond_a8
    if-nez p4, :cond_bc

    sget-object p4, Lio/flutter/view/f$g;->p:Lio/flutter/view/f$g;

    invoke-static {p1, p4}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result p1

    if-eqz p1, :cond_bc

    iget-object p1, p0, Lio/flutter/view/f;->b:Lr0/a;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lr0/a;->c(ILio/flutter/view/f$g;Ljava/lang/Object;)V

    return v1

    :cond_bc
    :goto_bc
    const/4 p1, 0x0

    return p1
.end method

.method private O(Lio/flutter/view/f$l;ILandroid/os/Bundle;)Z
    .registers 6

    if-eqz p3, :cond_f

    const-string v0, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_11

    :cond_f
    const-string p3, ""

    :goto_11
    iget-object v0, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object v1, Lio/flutter/view/f$g;->A:Lio/flutter/view/f$g;

    invoke-virtual {v0, p2, v1, p3}, Lr0/a;->c(ILio/flutter/view/f$g;Ljava/lang/Object;)V

    invoke-static {p1, p3}, Lio/flutter/view/f$l;->r(Lio/flutter/view/f$l;Ljava/lang/String;)Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/flutter/view/f$l;->F(Lio/flutter/view/f$l;Ljava/util/List;)Ljava/util/List;

    const/4 p1, 0x1

    return p1
.end method

.method private P(Lio/flutter/view/f$l;IZZ)V
    .registers 8

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v0

    if-ltz v0, :cond_111

    invoke-static {p1}, Lio/flutter/view/f$l;->i(Lio/flutter/view/f$l;)I

    move-result v0

    if-gez v0, :cond_e

    goto/16 :goto_111

    :cond_e
    const/4 v0, 0x1

    if-eq p2, v0, :cond_e9

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_94

    const/4 v1, 0x4

    if-eq p2, v1, :cond_36

    const/16 v0, 0x8

    if-eq p2, v0, :cond_22

    const/16 v0, 0x10

    if-eq p2, v0, :cond_22

    goto/16 :goto_108

    :cond_22
    if-eqz p3, :cond_31

    :cond_24
    invoke-static {p1}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    :goto_2c
    invoke-static {p1, p2}, Lio/flutter/view/f$l;->l(Lio/flutter/view/f$l;I)I

    goto/16 :goto_108

    :cond_31
    invoke-static {p1, v2}, Lio/flutter/view/f$l;->l(Lio/flutter/view/f$l;I)I

    goto/16 :goto_108

    :cond_36
    if-eqz p3, :cond_6b

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result p2

    invoke-static {p1}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_6b

    const-string p2, "(?!^)(\\n)"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p1}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_24

    :goto_62
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/f$l;->m(Lio/flutter/view/f$l;I)I

    goto/16 :goto_108

    :cond_6b
    if-nez p3, :cond_108

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result p2

    if-lez p2, :cond_108

    const-string p2, "(?s:.*)(\\n)"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p1}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_31

    :goto_8f
    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result p2

    goto :goto_2c

    :cond_94
    if-eqz p3, :cond_c4

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result p2

    invoke-static {p1}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_c4

    const-string p2, "\\p{L}(\\b)"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p1}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_24

    goto :goto_62

    :cond_c4
    if-nez p3, :cond_108

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result p2

    if-lez p2, :cond_108

    const-string p2, "(?s:.*)(\\b)\\p{L}"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-static {p1}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_108

    goto :goto_8f

    :cond_e9
    if-eqz p3, :cond_fd

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result p2

    invoke-static {p1}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_fd

    invoke-static {p1, v0}, Lio/flutter/view/f$l;->m(Lio/flutter/view/f$l;I)I

    goto :goto_108

    :cond_fd
    if-nez p3, :cond_108

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result p2

    if-lez p2, :cond_108

    invoke-static {p1, v0}, Lio/flutter/view/f$l;->n(Lio/flutter/view/f$l;I)I

    :cond_108
    :goto_108
    if-nez p4, :cond_111

    invoke-static {p1}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/f$l;->j(Lio/flutter/view/f$l;I)I

    :cond_111
    :goto_111
    return-void
.end method

.method private S(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/view/f;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method private T()V
    .registers 3

    iget-object v0, p0, Lio/flutter/view/f;->b:Lr0/a;

    iget v1, p0, Lio/flutter/view/f;->l:I

    invoke-virtual {v0, v1}, Lr0/a;->f(I)V

    return-void
.end method

.method private U(I)V
    .registers 3

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lio/flutter/view/f;->H(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-direct {p0, p1}, Lio/flutter/view/f;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private V(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/core/view/r0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private W(Z)V
    .registers 3

    iget-boolean v0, p0, Lio/flutter/view/f;->t:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lio/flutter/view/f;->t:Z

    if-eqz p1, :cond_11

    iget p1, p0, Lio/flutter/view/f;->l:I

    sget-object v0, Lio/flutter/view/f$f;->f:Lio/flutter/view/f$f;

    iget v0, v0, Lio/flutter/view/f$f;->e:I

    or-int/2addr p1, v0

    goto :goto_19

    :cond_11
    iget p1, p0, Lio/flutter/view/f;->l:I

    sget-object v0, Lio/flutter/view/f$f;->f:Lio/flutter/view/f$f;

    iget v0, v0, Lio/flutter/view/f$f;->e:I

    not-int v0, v0

    and-int/2addr p1, v0

    :goto_19
    iput p1, p0, Lio/flutter/view/f;->l:I

    invoke-direct {p0}, Lio/flutter/view/f;->T()V

    return-void
.end method

.method private X()V
    .registers 3

    iget-object v0, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_39

    :cond_b
    iget-object v0, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_22

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_2d

    iget v0, p0, Lio/flutter/view/f;->l:I

    sget-object v1, Lio/flutter/view/f$f;->i:Lio/flutter/view/f$f;

    iget v1, v1, Lio/flutter/view/f$f;->e:I

    or-int/2addr v0, v1

    goto :goto_34

    :cond_2d
    iget v0, p0, Lio/flutter/view/f;->l:I

    sget-object v1, Lio/flutter/view/f$f;->i:Lio/flutter/view/f$f;

    iget v1, v1, Lio/flutter/view/f$f;->e:I

    and-int/2addr v0, v1

    :goto_34
    iput v0, p0, Lio/flutter/view/f;->l:I

    invoke-direct {p0}, Lio/flutter/view/f;->T()V

    :cond_39
    :goto_39
    return-void
.end method

.method private Z(Lio/flutter/view/f$l;)Z
    .registers 4

    invoke-static {p1}, Lio/flutter/view/f$l;->c(Lio/flutter/view/f$l;)I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    new-instance v1, Lio/flutter/view/d;

    invoke-direct {v1, p1}, Lio/flutter/view/d;-><init>(Lio/flutter/view/f$l;)V

    invoke-static {v0, v1}, Lio/flutter/view/f$l;->d(Lio/flutter/view/f$l;Lz0/e;)Z

    move-result p1

    if-nez p1, :cond_20

    iget-object p1, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    new-instance v0, Lio/flutter/view/e;

    invoke-direct {v0}, Lio/flutter/view/e;-><init>()V

    invoke-static {p1, v0}, Lio/flutter/view/f$l;->d(Lio/flutter/view/f$l;Lz0/e;)Z

    move-result p1

    if-nez p1, :cond_22

    :cond_20
    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method

.method public static synthetic a(Lio/flutter/view/f$l;)Z
    .registers 1

    invoke-static {p0}, Lio/flutter/view/f;->F(Lio/flutter/view/f$l;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lio/flutter/view/f$l;Lio/flutter/view/f$l;)Z
    .registers 2

    invoke-static {p0, p1}, Lio/flutter/view/f;->E(Lio/flutter/view/f$l;Lio/flutter/view/f$l;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lio/flutter/view/f;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    return-object p0
.end method

.method private c0(Lio/flutter/view/f$l;)V
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/view/f$l;->u(Lio/flutter/view/f$l;Lio/flutter/view/f$l;)Lio/flutter/view/f$l;

    invoke-static {p1}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_32

    iget-object v1, p0, Lio/flutter/view/f;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    iget-object v4, p0, Lio/flutter/view/f;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lio/flutter/view/AccessibilityViewEmbedder;->platformViewOfNode(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/flutter/view/f;->e:Lio/flutter/plugin/platform/p;

    invoke-static {p1}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v5

    invoke-interface {v4, v5}, Lio/flutter/plugin/platform/p;->c(I)Landroid/view/View;

    move-result-object v4

    if-ne v1, v4, :cond_32

    iget-object v1, p0, Lio/flutter/view/f;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lio/flutter/view/f;->R(II)V

    iput-object v0, p0, Lio/flutter/view/f;->j:Ljava/lang/Integer;

    :cond_32
    invoke-static {p1}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v1

    if-eq v1, v3, :cond_48

    iget-object v1, p0, Lio/flutter/view/f;->e:Lio/flutter/plugin/platform/p;

    invoke-static {p1}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v3

    invoke-interface {v1, v3}, Lio/flutter/plugin/platform/p;->c(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_48

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_48
    iget-object v1, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    if-ne v1, p1, :cond_55

    invoke-static {v1}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lio/flutter/view/f;->R(II)V

    iput-object v0, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    :cond_55
    iget-object v1, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    if-ne v1, p1, :cond_5b

    iput-object v0, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    :cond_5b
    iget-object v1, p0, Lio/flutter/view/f;->o:Lio/flutter/view/f$l;

    if-ne v1, p1, :cond_61

    iput-object v0, p0, Lio/flutter/view/f;->o:Lio/flutter/view/f$l;

    :cond_61
    return-void
.end method

.method static synthetic d(Lio/flutter/view/f;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f;->f:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic e(Lio/flutter/view/f;I)I
    .registers 3

    iget v0, p0, Lio/flutter/view/f;->l:I

    and-int/2addr p1, v0

    iput p1, p0, Lio/flutter/view/f;->l:I

    return p1
.end method

.method static synthetic f(Lio/flutter/view/f;I)I
    .registers 3

    iget v0, p0, Lio/flutter/view/f;->l:I

    or-int/2addr p1, v0

    iput p1, p0, Lio/flutter/view/f;->l:I

    return p1
.end method

.method static synthetic g(Lio/flutter/view/f;)V
    .registers 1

    invoke-direct {p0}, Lio/flutter/view/f;->T()V

    return-void
.end method

.method static synthetic h(Lio/flutter/view/f;)V
    .registers 1

    invoke-direct {p0}, Lio/flutter/view/f;->L()V

    return-void
.end method

.method static synthetic i(Lio/flutter/view/f;II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 3

    invoke-direct {p0, p1, p2}, Lio/flutter/view/f;->H(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lio/flutter/view/f;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/f;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method static synthetic k(Lio/flutter/view/f;)Z
    .registers 1

    iget-boolean p0, p0, Lio/flutter/view/f;->u:Z

    return p0
.end method

.method static synthetic l(Lio/flutter/view/f;)Lr0/a$b;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f;->v:Lr0/a$b;

    return-object p0
.end method

.method static synthetic m(Lio/flutter/view/f;)Lr0/a;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f;->b:Lr0/a;

    return-object p0
.end method

.method static synthetic n(Lio/flutter/view/f;I)Lio/flutter/view/f$l;
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/f;->z(I)Lio/flutter/view/f$l;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lio/flutter/view/f;I)Lio/flutter/view/f$h;
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/f;->y(I)Lio/flutter/view/f$h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lio/flutter/view/f;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/view/f;->W(Z)V

    return-void
.end method

.method static synthetic q()I
    .registers 1

    sget v0, Lio/flutter/view/f;->z:I

    return v0
.end method

.method static synthetic r()I
    .registers 1

    sget v0, Lio/flutter/view/f;->A:I

    return v0
.end method

.method static synthetic s(Lio/flutter/view/f;)Lio/flutter/view/f$k;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f;->s:Lio/flutter/view/f$k;

    return-object p0
.end method

.method static synthetic t(Lio/flutter/view/f;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    iget-object p0, p0, Lio/flutter/view/f;->c:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private u(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;
    .registers 9

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lio/flutter/view/f;->H(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2b

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2b
    :goto_2b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_39

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_39

    const/4 p1, 0x0

    return-object p1

    :cond_39
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_48
    if-lt v1, v0, :cond_5c

    if-lt v2, v0, :cond_5c

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_57

    goto :goto_5c

    :cond_57
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    :cond_5c
    :goto_5c
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    return-object p1
.end method

.method private v()Z
    .registers 4

    iget-object v0, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz0/i;->f(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_24

    :cond_14
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_23

    if-nez v0, :cond_24

    :cond_23
    const/4 v1, 0x1

    :cond_24
    :goto_24
    return v1
.end method

.method private x(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v1, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object v0
.end method

.method private y(I)Lio/flutter/view/f$h;
    .registers 4

    iget-object v0, p0, Lio/flutter/view/f;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/f$h;

    if-nez v0, :cond_25

    new-instance v0, Lio/flutter/view/f$h;

    invoke-direct {v0}, Lio/flutter/view/f$h;-><init>()V

    invoke-static {v0, p1}, Lio/flutter/view/f$h;->h(Lio/flutter/view/f$h;I)I

    sget v1, Lio/flutter/view/f;->B:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lio/flutter/view/f$h;->d(Lio/flutter/view/f$h;I)I

    iget-object v1, p0, Lio/flutter/view/f;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-object v0
.end method

.method private z(I)Lio/flutter/view/f$l;
    .registers 4

    iget-object v0, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/f$l;

    if-nez v0, :cond_1f

    new-instance v0, Lio/flutter/view/f$l;

    invoke-direct {v0, p0}, Lio/flutter/view/f$l;-><init>(Lio/flutter/view/f;)V

    invoke-static {v0, p1}, Lio/flutter/view/f$l;->b(Lio/flutter/view/f$l;I)I

    iget-object v1, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method


# virtual methods
.method public C()Z
    .registers 2

    iget-object v0, p0, Lio/flutter/view/f;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .registers 2

    iget-object v0, p0, Lio/flutter/view/f;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public G(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 2

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method public I(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public J(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/f;->K(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method public K(Landroid/view/MotionEvent;Z)Z
    .registers 9

    iget-object v0, p0, Lio/flutter/view/f;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    invoke-direct {p0}, Lio/flutter/view/f;->A()Lio/flutter/view/f$l;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    const/4 v5, 0x0

    aput v5, v2, v3

    const/4 v3, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v3

    invoke-static {v0, v2, p2}, Lio/flutter/view/f$l;->J(Lio/flutter/view/f$l;[FZ)Lio/flutter/view/f$l;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-static {v0}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4b

    if-eqz p2, :cond_40

    return v1

    :cond_40
    iget-object p2, p0, Lio/flutter/view/f;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-static {v0}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->onAccessibilityHoverEvent(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_7e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_5b

    goto :goto_7e

    :cond_5b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_67

    invoke-direct {p0}, Lio/flutter/view/f;->L()V

    goto :goto_89

    :cond_67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected accessibility hover event: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "flutter"

    invoke-static {p2, p1}, Le0/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7e
    :goto_7e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Lio/flutter/view/f;->B(FFZ)V

    :goto_89
    return v4
.end method

.method public Q()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/view/f;->u:Z

    iget-object v0, p0, Lio/flutter/view/f;->e:Lio/flutter/plugin/platform/p;

    invoke-interface {v0}, Lio/flutter/plugin/platform/p;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/flutter/view/f;->Y(Lio/flutter/view/f$k;)V

    iget-object v1, p0, Lio/flutter/view/f;->c:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/f;->w:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v1, p0, Lio/flutter/view/f;->c:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/f;->x:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    iget-object v1, p0, Lio/flutter/view/f;->f:Landroid/content/ContentResolver;

    iget-object v2, p0, Lio/flutter/view/f;->y:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lio/flutter/view/f;->b:Lr0/a;

    invoke-virtual {v1, v0}, Lr0/a;->g(Lr0/a$b;)V

    return-void
.end method

.method public R(II)V
    .registers 4

    iget-object v0, p0, Lio/flutter/view/f;->c:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, p1, p2}, Lio/flutter/view/f;->H(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/view/f;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public Y(Lio/flutter/view/f$k;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/view/f;->s:Lio/flutter/view/f$k;

    return-void
.end method

.method a0(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .registers 7

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-direct {p0, v0}, Lio/flutter/view/f;->y(I)Lio/flutter/view/f$h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v0, v1}, Lio/flutter/view/f$h;->j(Lio/flutter/view/f$h;I)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1f

    move-object v1, v2

    goto :goto_21

    :cond_1f
    aget-object v1, p2, v1

    :goto_21
    invoke-static {v0, v1}, Lio/flutter/view/f$h;->f(Lio/flutter/view/f$h;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v3, :cond_2b

    goto :goto_2d

    :cond_2b
    aget-object v2, p2, v1

    :goto_2d
    invoke-static {v0, v2}, Lio/flutter/view/f$h;->b(Lio/flutter/view/f$h;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_31
    return-void
.end method

.method b0(Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V
    .registers 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-direct {p0, v1}, Lio/flutter/view/f;->z(I)Lio/flutter/view/f$l;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lio/flutter/view/f$l;->K(Lio/flutter/view/f$l;Ljava/nio/ByteBuffer;[Ljava/lang/String;[Ljava/nio/ByteBuffer;)V

    sget-object v3, Lio/flutter/view/f$i;->s:Lio/flutter/view/f$i;

    invoke-static {v1, v3}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_5

    :cond_20
    sget-object v3, Lio/flutter/view/f$i;->k:Lio/flutter/view/f$i;

    invoke-static {v1, v3}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iput-object v1, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    :cond_2a
    invoke-static {v1}, Lio/flutter/view/f$l;->L(Lio/flutter/view/f$l;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    invoke-static {v1}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lio/flutter/view/f;->e:Lio/flutter/plugin/platform/p;

    invoke-static {v1}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v4

    invoke-interface {v3, v4}, Lio/flutter/plugin/platform/p;->b(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lio/flutter/view/f;->e:Lio/flutter/plugin/platform/p;

    invoke-static {v1}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v1

    invoke-interface {v3, v1}, Lio/flutter/plugin/platform/p;->c(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_5

    :cond_56
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lio/flutter/view/f;->A()Lio/flutter/view/f$l;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_b7

    const/16 v3, 0x10

    new-array v3, v3, [F

    invoke-static {v3, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_b1

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_7d

    invoke-direct {p0}, Lio/flutter/view/f;->v()Z

    move-result v4

    goto :goto_7e

    :cond_7d
    const/4 v4, 0x1

    :goto_7e
    if-eqz v4, :cond_b1

    iget-object v4, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/j0;->a(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v4

    if-eqz v4, :cond_b1

    iget-object v5, p0, Lio/flutter/view/f;->r:Ljava/lang/Integer;

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9e

    invoke-static {p2, v1}, Lio/flutter/view/f$l;->M(Lio/flutter/view/f$l;Z)Z

    invoke-static {p2, v1}, Lio/flutter/view/f$l;->N(Lio/flutter/view/f$l;Z)Z

    :cond_9e
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lio/flutter/view/f;->r:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_b1
    invoke-static {p2, v3, p1, v2}, Lio/flutter/view/f$l;->O(Lio/flutter/view/f$l;[FLjava/util/Set;Z)V

    invoke-static {p2, p3}, Lio/flutter/view/f$l;->P(Lio/flutter/view/f$l;Ljava/util/List;)V

    :cond_b7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_bd
    :goto_bd
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_db

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/flutter/view/f$l;

    iget-object v6, p0, Lio/flutter/view/f;->p:Ljava/util/List;

    invoke-static {v5}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bd

    move-object v4, v5

    goto :goto_bd

    :cond_db
    if-nez v4, :cond_ef

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_ef

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lio/flutter/view/f$l;

    :cond_ef
    if-eqz v4, :cond_10e

    invoke-static {v4}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p2

    iget v5, p0, Lio/flutter/view/f;->q:I

    if-ne p2, v5, :cond_105

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    iget-object v5, p0, Lio/flutter/view/f;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq p2, v5, :cond_10e

    :cond_105
    invoke-static {v4}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p2

    iput p2, p0, Lio/flutter/view/f;->q:I

    invoke-direct {p0, v4}, Lio/flutter/view/f;->M(Lio/flutter/view/f$l;)V

    :cond_10e
    iget-object p2, p0, Lio/flutter/view/f;->p:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_117
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_131

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/flutter/view/f$l;

    iget-object v4, p0, Lio/flutter/view/f;->p:Ljava/util/List;

    invoke-static {p3}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_117

    :cond_131
    iget-object p2, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13b
    :goto_13b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_15a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/flutter/view/f$l;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13b

    invoke-direct {p0, p3}, Lio/flutter/view/f;->c0(Lio/flutter/view/f$l;)V

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_13b

    :cond_15a
    invoke-direct {p0, v2}, Lio/flutter/view/f;->U(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_161
    :goto_161
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_340

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/f$l;

    invoke-static {p2}, Lio/flutter/view/f$l;->Q(Lio/flutter/view/f$l;)Z

    move-result p3

    if-eqz p3, :cond_232

    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    const/16 v0, 0x1000

    invoke-direct {p0, p3, v0}, Lio/flutter/view/f;->H(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    invoke-static {p2}, Lio/flutter/view/f$l;->R(Lio/flutter/view/f$l;)F

    move-result v0

    invoke-static {p2}, Lio/flutter/view/f$l;->S(Lio/flutter/view/f$l;)F

    move-result v4

    invoke-static {p2}, Lio/flutter/view/f$l;->S(Lio/flutter/view/f$l;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    const v6, 0x4788b800    # 70000.0f

    const v7, 0x47c35000    # 100000.0f

    if-eqz v5, :cond_19f

    cmpl-float v4, v0, v6

    if-lez v4, :cond_19c

    const v0, 0x4788b800    # 70000.0f

    :cond_19c
    const v4, 0x47c35000    # 100000.0f

    :cond_19f
    invoke-static {p2}, Lio/flutter/view/f$l;->T(Lio/flutter/view/f$l;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_1b6

    add-float/2addr v4, v7

    const v5, -0x38774800    # -70000.0f

    cmpg-float v6, v0, v5

    if-gez v6, :cond_1b4

    const v0, -0x38774800    # -70000.0f

    :cond_1b4
    add-float/2addr v0, v7

    goto :goto_1c0

    :cond_1b6
    invoke-static {p2}, Lio/flutter/view/f$l;->T(Lio/flutter/view/f$l;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {p2}, Lio/flutter/view/f$l;->T(Lio/flutter/view/f$l;)F

    move-result v5

    sub-float/2addr v0, v5

    :goto_1c0
    sget-object v5, Lio/flutter/view/f$g;->j:Lio/flutter/view/f$g;

    invoke-static {p2, v5}, Lio/flutter/view/f$l;->U(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v5

    if-nez v5, :cond_1ea

    sget-object v5, Lio/flutter/view/f$g;->k:Lio/flutter/view/f$g;

    invoke-static {p2, v5}, Lio/flutter/view/f$l;->U(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v5

    if-eqz v5, :cond_1d1

    goto :goto_1ea

    :cond_1d1
    sget-object v5, Lio/flutter/view/f$g;->h:Lio/flutter/view/f$g;

    invoke-static {p2, v5}, Lio/flutter/view/f$l;->U(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v5

    if-nez v5, :cond_1e1

    sget-object v5, Lio/flutter/view/f$g;->i:Lio/flutter/view/f$g;

    invoke-static {p2, v5}, Lio/flutter/view/f$l;->U(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v5

    if-eqz v5, :cond_1f2

    :cond_1e1
    float-to-int v0, v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    float-to-int v0, v4

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    goto :goto_1f2

    :cond_1ea
    :goto_1ea
    float-to-int v0, v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    float-to-int v0, v4

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    :cond_1f2
    :goto_1f2
    invoke-static {p2}, Lio/flutter/view/f$l;->c(Lio/flutter/view/f$l;)I

    move-result v0

    if-lez v0, :cond_22f

    invoke-static {p2}, Lio/flutter/view/f$l;->c(Lio/flutter/view/f$l;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    invoke-static {p2}, Lio/flutter/view/f$l;->V(Lio/flutter/view/f$l;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-static {p2}, Lio/flutter/view/f$l;->W(Lio/flutter/view/f$l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_20f
    :goto_20f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_226

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/flutter/view/f$l;

    sget-object v6, Lio/flutter/view/f$i;->s:Lio/flutter/view/f$i;

    invoke-static {v5, v6}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v5

    if-nez v5, :cond_20f

    add-int/lit8 v4, v4, 0x1

    goto :goto_20f

    :cond_226
    invoke-static {p2}, Lio/flutter/view/f$l;->V(Lio/flutter/view/f$l;)I

    move-result v0

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_22f
    invoke-direct {p0, p3}, Lio/flutter/view/f;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_232
    sget-object p3, Lio/flutter/view/f$i;->u:Lio/flutter/view/f$i;

    invoke-static {p2, p3}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result p3

    if-eqz p3, :cond_247

    invoke-static {p2}, Lio/flutter/view/f$l;->X(Lio/flutter/view/f$l;)Z

    move-result p3

    if-eqz p3, :cond_247

    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    invoke-direct {p0, p3}, Lio/flutter/view/f;->U(I)V

    :cond_247
    iget-object p3, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    if-eqz p3, :cond_27a

    invoke-static {p3}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v0

    if-ne p3, v0, :cond_27a

    sget-object p3, Lio/flutter/view/f$i;->h:Lio/flutter/view/f$i;

    invoke-static {p2, p3}, Lio/flutter/view/f$l;->Y(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v0

    if-nez v0, :cond_27a

    invoke-static {p2, p3}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result p3

    if-eqz p3, :cond_27a

    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    const/4 v0, 0x4

    invoke-direct {p0, p3, v0}, Lio/flutter/view/f;->H(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lio/flutter/view/f$l;->Z(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p3}, Lio/flutter/view/f;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_27a
    iget-object p3, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    if-eqz p3, :cond_2aa

    invoke-static {p3}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v0

    if-ne p3, v0, :cond_2aa

    iget-object p3, p0, Lio/flutter/view/f;->n:Lio/flutter/view/f$l;

    if-eqz p3, :cond_298

    invoke-static {p3}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    iget-object v0, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    invoke-static {v0}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v0

    if-eq p3, v0, :cond_2aa

    :cond_298
    iget-object p3, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    iput-object p3, p0, Lio/flutter/view/f;->n:Lio/flutter/view/f$l;

    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    const/16 v0, 0x8

    invoke-direct {p0, p3, v0}, Lio/flutter/view/f;->H(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    invoke-direct {p0, p3}, Lio/flutter/view/f;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_2b0

    :cond_2aa
    iget-object p3, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    if-nez p3, :cond_2b0

    iput-object v3, p0, Lio/flutter/view/f;->n:Lio/flutter/view/f$l;

    :cond_2b0
    :goto_2b0
    iget-object p3, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    if-eqz p3, :cond_161

    invoke-static {p3}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v0

    if-ne p3, v0, :cond_161

    sget-object p3, Lio/flutter/view/f$i;->j:Lio/flutter/view/f$i;

    invoke-static {p2, p3}, Lio/flutter/view/f$l;->Y(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v0

    if-eqz v0, :cond_161

    invoke-static {p2, p3}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result p3

    if-eqz p3, :cond_161

    iget-object p3, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    if-eqz p3, :cond_2dc

    invoke-static {p3}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    iget-object v0, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    invoke-static {v0}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v0

    if-ne p3, v0, :cond_161

    :cond_2dc
    invoke-static {p2}, Lio/flutter/view/f$l;->a0(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    if-eqz p3, :cond_2e9

    invoke-static {p2}, Lio/flutter/view/f$l;->a0(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2ea

    :cond_2e9
    move-object p3, v0

    :goto_2ea
    invoke-static {p2}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f4

    invoke-static {p2}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v0

    :cond_2f4
    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v4

    invoke-direct {p0, v4, p3, v0}, Lio/flutter/view/f;->u(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    if-eqz p3, :cond_301

    invoke-direct {p0, p3}, Lio/flutter/view/f;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_301
    invoke-static {p2}, Lio/flutter/view/f$l;->b0(Lio/flutter/view/f$l;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/f$l;->i(Lio/flutter/view/f$l;)I

    move-result v4

    if-ne p3, v4, :cond_315

    invoke-static {p2}, Lio/flutter/view/f$l;->c0(Lio/flutter/view/f$l;)I

    move-result p3

    invoke-static {p2}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v4

    if-eq p3, v4, :cond_161

    :cond_315
    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p3

    const/16 v4, 0x2000

    invoke-direct {p0, p3, v4}, Lio/flutter/view/f;->H(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lio/flutter/view/f$l;->i(Lio/flutter/view/f$l;)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-static {p2}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    invoke-direct {p0, p3}, Lio/flutter/view/f;->S(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_161

    :cond_340
    return-void
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/flutter/view/f;->W(Z)V

    const/high16 v1, 0x10000

    if-lt p1, v1, :cond_f

    iget-object v0, p0, Lio/flutter/view/f;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_30

    iget-object p1, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {p1, v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_2f
    return-object p1

    :cond_30
    iget-object v4, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/view/f$l;

    const/4 v5, 0x0

    if-nez v4, :cond_40

    return-object v5

    :cond_40
    invoke-static {v4}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v6

    if-eq v6, v2, :cond_6e

    iget-object v6, p0, Lio/flutter/view/f;->e:Lio/flutter/plugin/platform/p;

    invoke-static {v4}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v7

    invoke-interface {v6, v7}, Lio/flutter/plugin/platform/p;->b(I)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget-object p1, p0, Lio/flutter/view/f;->e:Lio/flutter/plugin/platform/p;

    invoke-static {v4}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/platform/p;->c(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5f

    return-object v5

    :cond_5f
    invoke-static {v4}, Lio/flutter/view/f$l;->f(Lio/flutter/view/f$l;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/f;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-static {v4}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lio/flutter/view/AccessibilityViewEmbedder;->getRootNode(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_6e
    iget-object v5, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {p0, v5, p1}, Lio/flutter/view/f;->I(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    iget-object v8, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    const-string v8, "android.view.View"

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {v5, v8, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    invoke-static {v4}, Lio/flutter/view/f$l;->g(Lio/flutter/view/f$l;)Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    iget-object v8, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    if-eqz v8, :cond_a9

    invoke-static {v8}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v8

    if-ne v8, p1, :cond_a5

    const/4 v8, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v8, 0x0

    :goto_a6
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    :cond_a9
    iget-object v8, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    if-eqz v8, :cond_b9

    invoke-static {v8}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v8

    if-ne v8, p1, :cond_b5

    const/4 v8, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v8, 0x0

    :goto_b6
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    :cond_b9
    sget-object v8, Lio/flutter/view/f$i;->j:Lio/flutter/view/f$i;

    invoke-static {v4, v8}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v9

    if-eqz v9, :cond_168

    sget-object v9, Lio/flutter/view/f$i;->p:Lio/flutter/view/f$i;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v9

    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    sget-object v9, Lio/flutter/view/f$i;->z:Lio/flutter/view/f$i;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v10

    if-nez v10, :cond_d7

    const-string v10, "android.widget.EditText"

    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_d7
    invoke-static {v4, v9}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v9

    xor-int/2addr v9, v0

    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    invoke-static {v4}, Lio/flutter/view/f$l;->i(Lio/flutter/view/f$l;)I

    move-result v9

    if-eq v9, v2, :cond_f6

    invoke-static {v4}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v9

    if-eq v9, v2, :cond_f6

    invoke-static {v4}, Lio/flutter/view/f$l;->i(Lio/flutter/view/f$l;)I

    move-result v9

    invoke-static {v4}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    :cond_f6
    iget-object v9, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    if-eqz v9, :cond_103

    invoke-static {v9}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v9

    if-ne v9, p1, :cond_103

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    :cond_103
    sget-object v9, Lio/flutter/view/f$g;->o:Lio/flutter/view/f$g;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    const/16 v10, 0x100

    if-eqz v9, :cond_112

    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v9, 0x1

    goto :goto_113

    :cond_112
    const/4 v9, 0x0

    :goto_113
    sget-object v11, Lio/flutter/view/f$g;->p:Lio/flutter/view/f$g;

    invoke-static {v4, v11}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v11

    const/16 v12, 0x200

    if-eqz v11, :cond_122

    invoke-virtual {v5, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v9, v9, 0x1

    :cond_122
    sget-object v11, Lio/flutter/view/f$g;->y:Lio/flutter/view/f$g;

    invoke-static {v4, v11}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v11

    if-eqz v11, :cond_12f

    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v9, v9, 0x2

    :cond_12f
    sget-object v10, Lio/flutter/view/f$g;->z:Lio/flutter/view/f$g;

    invoke-static {v4, v10}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v10

    if-eqz v10, :cond_13c

    invoke-virtual {v5, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v9, v9, 0x2

    :cond_13c
    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    invoke-static {v4}, Lio/flutter/view/f$l;->p(Lio/flutter/view/f$l;)I

    move-result v9

    if-ltz v9, :cond_168

    invoke-static {v4}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_14d

    const/4 v9, 0x0

    goto :goto_155

    :cond_14d
    invoke-static {v4}, Lio/flutter/view/f$l;->q(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :goto_155
    invoke-static {v4}, Lio/flutter/view/f$l;->s(Lio/flutter/view/f$l;)I

    invoke-static {v4}, Lio/flutter/view/f$l;->p(Lio/flutter/view/f$l;)I

    invoke-static {v4}, Lio/flutter/view/f$l;->s(Lio/flutter/view/f$l;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v4}, Lio/flutter/view/f$l;->p(Lio/flutter/view/f$l;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_168
    sget-object v9, Lio/flutter/view/f$g;->q:Lio/flutter/view/f$g;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    if-eqz v9, :cond_175

    const/high16 v9, 0x20000

    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_175
    sget-object v9, Lio/flutter/view/f$g;->r:Lio/flutter/view/f$g;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    if-eqz v9, :cond_182

    const/16 v9, 0x4000

    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_182
    sget-object v9, Lio/flutter/view/f$g;->s:Lio/flutter/view/f$g;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    if-eqz v9, :cond_18d

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_18d
    sget-object v1, Lio/flutter/view/f$g;->t:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-eqz v1, :cond_19b

    const v1, 0x8000

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_19b
    sget-object v1, Lio/flutter/view/f$g;->A:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    const/high16 v1, 0x200000

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1a8
    sget-object v1, Lio/flutter/view/f$i;->i:Lio/flutter/view/f$i;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v1

    if-nez v1, :cond_1b8

    sget-object v1, Lio/flutter/view/f$i;->B:Lio/flutter/view/f$i;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v1

    if-eqz v1, :cond_1bd

    :cond_1b8
    const-string v1, "android.widget.Button"

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_1bd
    sget-object v1, Lio/flutter/view/f$i;->t:Lio/flutter/view/f$i;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v1

    if-eqz v1, :cond_1ca

    const-string v1, "android.widget.ImageView"

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_1ca
    sget-object v1, Lio/flutter/view/f$g;->x:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-eqz v1, :cond_1da

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    const/high16 v1, 0x100000

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1da
    invoke-static {v4}, Lio/flutter/view/f$l;->t(Lio/flutter/view/f$l;)Lio/flutter/view/f$l;

    move-result-object v1

    if-eqz v1, :cond_1ee

    iget-object v1, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-static {v4}, Lio/flutter/view/f$l;->t(Lio/flutter/view/f$l;)Lio/flutter/view/f$l;

    move-result-object v9

    invoke-static {v9}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v9

    invoke-virtual {v5, v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    goto :goto_1f3

    :cond_1ee
    iget-object v1, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    :goto_1f3
    invoke-static {v4}, Lio/flutter/view/f$l;->v(Lio/flutter/view/f$l;)I

    move-result v1

    if-eq v1, v2, :cond_206

    const/16 v1, 0x16

    if-lt v6, v1, :cond_206

    iget-object v1, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-static {v4}, Lio/flutter/view/f$l;->v(Lio/flutter/view/f$l;)I

    move-result v9

    invoke-static {v5, v1, v9}, Lio/flutter/view/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V

    :cond_206
    invoke-static {v4}, Lio/flutter/view/f$l;->f(Lio/flutter/view/f$l;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v4}, Lio/flutter/view/f$l;->t(Lio/flutter/view/f$l;)Lio/flutter/view/f$l;

    move-result-object v9

    if-eqz v9, :cond_22a

    invoke-static {v4}, Lio/flutter/view/f$l;->t(Lio/flutter/view/f$l;)Lio/flutter/view/f$l;

    move-result-object v9

    invoke-static {v9}, Lio/flutter/view/f$l;->f(Lio/flutter/view/f$l;)Landroid/graphics/Rect;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v11, v9, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    iget v9, v9, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    invoke-virtual {v10, v11, v9}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_22d

    :cond_22a
    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_22d
    invoke-direct {p0, v1}, Lio/flutter/view/f;->x(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    sget-object v1, Lio/flutter/view/f$i;->l:Lio/flutter/view/f$i;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v1

    if-eqz v1, :cond_24a

    sget-object v1, Lio/flutter/view/f$i;->m:Lio/flutter/view/f$i;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v1

    if-eqz v1, :cond_248

    goto :goto_24a

    :cond_248
    const/4 v1, 0x0

    goto :goto_24b

    :cond_24a
    :goto_24a
    const/4 v1, 0x1

    :goto_24b
    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v1, Lio/flutter/view/f$g;->f:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-eqz v1, :cond_275

    invoke-static {v4}, Lio/flutter/view/f$l;->w(Lio/flutter/view/f$l;)Lio/flutter/view/f$h;

    move-result-object v1

    const/16 v9, 0x10

    if-eqz v1, :cond_26f

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v4}, Lio/flutter/view/f$l;->w(Lio/flutter/view/f$l;)Lio/flutter/view/f$h;

    move-result-object v10

    invoke-static {v10}, Lio/flutter/view/f$h;->a(Lio/flutter/view/f$h;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_272

    :cond_26f
    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_272
    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_275
    sget-object v1, Lio/flutter/view/f$g;->g:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-eqz v1, :cond_29c

    invoke-static {v4}, Lio/flutter/view/f$l;->x(Lio/flutter/view/f$l;)Lio/flutter/view/f$h;

    move-result-object v1

    const/16 v9, 0x20

    if-eqz v1, :cond_296

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v4}, Lio/flutter/view/f$l;->x(Lio/flutter/view/f$l;)Lio/flutter/view/f$h;

    move-result-object v10

    invoke-static {v10}, Lio/flutter/view/f$h;->a(Lio/flutter/view/f$h;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_299

    :cond_296
    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_299
    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    :cond_29c
    sget-object v1, Lio/flutter/view/f$g;->h:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    const/16 v10, 0x2000

    const/16 v11, 0x1000

    if-nez v9, :cond_2c0

    sget-object v9, Lio/flutter/view/f$g;->j:Lio/flutter/view/f$g;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    if-nez v9, :cond_2c0

    sget-object v9, Lio/flutter/view/f$g;->i:Lio/flutter/view/f$g;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    if-nez v9, :cond_2c0

    sget-object v9, Lio/flutter/view/f$g;->k:Lio/flutter/view/f$g;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    if-eqz v9, :cond_327

    :cond_2c0
    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    sget-object v9, Lio/flutter/view/f$i;->x:Lio/flutter/view/f$i;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v9

    if-eqz v9, :cond_303

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    if-nez v9, :cond_2ec

    sget-object v9, Lio/flutter/view/f$g;->i:Lio/flutter/view/f$g;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    if-eqz v9, :cond_2da

    goto :goto_2ec

    :cond_2da
    invoke-direct {p0, v4}, Lio/flutter/view/f;->Z(Lio/flutter/view/f$l;)Z

    move-result v9

    if-eqz v9, :cond_2e9

    invoke-static {v4}, Lio/flutter/view/f$l;->c(Lio/flutter/view/f$l;)I

    move-result v9

    invoke-static {v9, v3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v9

    goto :goto_2fa

    :cond_2e9
    const-string v9, "android.widget.ScrollView"

    goto :goto_300

    :cond_2ec
    :goto_2ec
    invoke-direct {p0, v4}, Lio/flutter/view/f;->Z(Lio/flutter/view/f$l;)Z

    move-result v9

    if-eqz v9, :cond_2fe

    invoke-static {v4}, Lio/flutter/view/f$l;->c(Lio/flutter/view/f$l;)I

    move-result v9

    invoke-static {v3, v9, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v9

    :goto_2fa
    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_303

    :cond_2fe
    const-string v9, "android.widget.HorizontalScrollView"

    :goto_300
    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_303
    :goto_303
    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-nez v1, :cond_311

    sget-object v1, Lio/flutter/view/f$g;->j:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-eqz v1, :cond_314

    :cond_311
    invoke-virtual {v5, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_314
    sget-object v1, Lio/flutter/view/f$g;->i:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-nez v1, :cond_324

    sget-object v1, Lio/flutter/view/f$g;->k:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-eqz v1, :cond_327

    :cond_324
    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_327
    sget-object v1, Lio/flutter/view/f$g;->l:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    if-nez v9, :cond_337

    sget-object v9, Lio/flutter/view/f$g;->m:Lio/flutter/view/f$g;

    invoke-static {v4, v9}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v9

    if-eqz v9, :cond_350

    :cond_337
    const-string v9, "android.widget.SeekBar"

    invoke-virtual {v5, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-eqz v1, :cond_345

    invoke-virtual {v5, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_345
    sget-object v1, Lio/flutter/view/f$g;->m:Lio/flutter/view/f$g;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result v1

    if-eqz v1, :cond_350

    invoke-virtual {v5, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_350
    sget-object v1, Lio/flutter/view/f$i;->u:Lio/flutter/view/f$i;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v1

    if-eqz v1, :cond_35b

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    :cond_35b
    invoke-static {v4, v8}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v1

    const/16 v8, 0x1c

    if-eqz v1, :cond_374

    invoke-static {v4}, Lio/flutter/view/f$l;->y(Lio/flutter/view/f$l;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    if-lt v6, v8, :cond_3a8

    invoke-static {v4}, Lio/flutter/view/f$l;->z(Lio/flutter/view/f$l;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v5, v1}, Lio/flutter/view/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    goto :goto_3a8

    :cond_374
    sget-object v1, Lio/flutter/view/f$i;->q:Lio/flutter/view/f$i;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v1

    if-nez v1, :cond_3a8

    invoke-static {v4}, Lio/flutter/view/f$l;->A(Lio/flutter/view/f$l;)Ljava/lang/CharSequence;

    move-result-object v1

    if-ge v6, v8, :cond_3a3

    invoke-static {v4}, Lio/flutter/view/f$l;->B(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3a3

    if-eqz v1, :cond_38b

    move-object v7, v1

    :cond_38b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lio/flutter/view/f$l;->B(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3a3
    if-eqz v1, :cond_3a8

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3a8
    :goto_3a8
    if-lt v6, v8, :cond_3b7

    invoke-static {v4}, Lio/flutter/view/f$l;->B(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b7

    invoke-static {v4}, Lio/flutter/view/f$l;->B(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lio/flutter/view/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    :cond_3b7
    sget-object v1, Lio/flutter/view/f$i;->f:Lio/flutter/view/f$i;

    invoke-static {v4, v1}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v1

    sget-object v7, Lio/flutter/view/f$i;->v:Lio/flutter/view/f$i;

    invoke-static {v4, v7}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v7

    if-nez v1, :cond_3c9

    if-eqz v7, :cond_3c8

    goto :goto_3c9

    :cond_3c8
    const/4 v0, 0x0

    :cond_3c9
    :goto_3c9
    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    if-eqz v1, :cond_3e5

    sget-object v0, Lio/flutter/view/f$i;->g:Lio/flutter/view/f$i;

    invoke-static {v4, v0}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    sget-object v0, Lio/flutter/view/f$i;->n:Lio/flutter/view/f$i;

    invoke-static {v4, v0}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v0

    if-eqz v0, :cond_3e2

    const-string v0, "android.widget.RadioButton"

    goto :goto_3f2

    :cond_3e2
    const-string v0, "android.widget.CheckBox"

    goto :goto_3f2

    :cond_3e5
    if-eqz v7, :cond_3f5

    sget-object v0, Lio/flutter/view/f$i;->w:Lio/flutter/view/f$i;

    invoke-static {v4, v0}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const-string v0, "android.widget.Switch"

    :goto_3f2
    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_3f5
    sget-object v0, Lio/flutter/view/f$i;->h:Lio/flutter/view/f$i;

    invoke-static {v4, v0}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    if-lt v6, v8, :cond_409

    sget-object v0, Lio/flutter/view/f$i;->o:Lio/flutter/view/f$i;

    invoke-static {v4, v0}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v0

    invoke-static {v5, v0}, Landroidx/core/view/accessibility/e;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    :cond_409
    iget-object v0, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    if-eqz v0, :cond_416

    invoke-static {v0}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v0

    if-ne v0, p1, :cond_416

    const/16 p1, 0x80

    goto :goto_418

    :cond_416
    const/16 p1, 0x40

    :goto_418
    invoke-virtual {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-static {v4}, Lio/flutter/view/f$l;->C(Lio/flutter/view/f$l;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_446

    invoke-static {v4}, Lio/flutter/view/f$l;->C(Lio/flutter/view/f$l;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_429
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_446

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/f$h;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v0}, Lio/flutter/view/f$h;->c(Lio/flutter/view/f$h;)I

    move-result v3

    invoke-static {v0}, Lio/flutter/view/f$h;->e(Lio/flutter/view/f$h;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_429

    :cond_446
    invoke-static {v4}, Lio/flutter/view/f$l;->D(Lio/flutter/view/f$l;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/f$l;

    sget-object v1, Lio/flutter/view/f$i;->s:Lio/flutter/view/f$i;

    invoke-static {v0, v1}, Lio/flutter/view/f$l;->h(Lio/flutter/view/f$l;Lio/flutter/view/f$i;)Z

    move-result v1

    if-eqz v1, :cond_463

    goto :goto_44e

    :cond_463
    invoke-static {v0}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v1

    if-eq v1, v2, :cond_483

    iget-object v1, p0, Lio/flutter/view/f;->e:Lio/flutter/plugin/platform/p;

    invoke-static {v0}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v3

    invoke-interface {v1, v3}, Lio/flutter/plugin/platform/p;->c(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lio/flutter/view/f;->e:Lio/flutter/plugin/platform/p;

    invoke-static {v0}, Lio/flutter/view/f$l;->e(Lio/flutter/view/f$l;)I

    move-result v4

    invoke-interface {v3, v4}, Lio/flutter/plugin/platform/p;->b(I)Z

    move-result v3

    if-nez v3, :cond_483

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    goto :goto_44e

    :cond_483
    iget-object v1, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-static {v0}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    goto :goto_44e

    :cond_48d
    return-object v5
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    goto :goto_27

    :cond_7
    iget-object p1, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    if-eqz p1, :cond_14

    :goto_b
    invoke-static {p1}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p1

    :goto_f
    invoke-virtual {p0, p1}, Lio/flutter/view/f;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_14
    iget-object p1, p0, Lio/flutter/view/f;->k:Ljava/lang/Integer;

    if-eqz p1, :cond_1d

    :goto_18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_f

    :cond_1d
    iget-object p1, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    if-eqz p1, :cond_22

    goto :goto_b

    :cond_22
    iget-object p1, p0, Lio/flutter/view/f;->j:Ljava/lang/Integer;

    if-eqz p1, :cond_27

    goto :goto_18

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 11

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    if-lt p1, v0, :cond_14

    iget-object v0, p0, Lio/flutter/view/f;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/16 p3, 0x80

    if-ne p2, p3, :cond_13

    iput-object v1, p0, Lio/flutter/view/f;->j:Ljava/lang/Integer;

    :cond_13
    return p1

    :cond_14
    iget-object v2, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/f$l;

    const/4 v3, 0x0

    if-nez v2, :cond_24

    return v3

    :cond_24
    const/4 v4, 0x4

    const/4 v5, 0x1

    sparse-switch p2, :sswitch_data_1ba

    sget p3, Lio/flutter/view/f;->B:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lio/flutter/view/f;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/f$h;

    if-eqz p2, :cond_1b8

    iget-object p3, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object v0, Lio/flutter/view/f$g;->w:Lio/flutter/view/f$g;

    invoke-static {p2}, Lio/flutter/view/f$h;->g(Lio/flutter/view/f$h;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, v0, p2}, Lr0/a;->c(ILio/flutter/view/f$g;Ljava/lang/Object;)V

    return v5

    :sswitch_4a
    iget-object p2, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object p3, Lio/flutter/view/f$g;->n:Lio/flutter/view/f$g;

    invoke-virtual {p2, p1, p3}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    return v5

    :sswitch_52
    invoke-direct {p0, v2, p1, p3}, Lio/flutter/view/f;->O(Lio/flutter/view/f$l;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :sswitch_57
    iget-object p2, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object p3, Lio/flutter/view/f$g;->x:Lio/flutter/view/f$g;

    invoke-virtual {p2, p1, p3}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    return v5

    :sswitch_5f
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ACTION_ARGUMENT_SELECTION_END_INT"

    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    if-eqz p3, :cond_77

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    const/4 v3, 0x1

    :cond_77
    const-string v4, "extent"

    const-string v6, "base"

    if-eqz v3, :cond_8d

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_9c

    :cond_8d
    invoke-static {v2}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v6, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lio/flutter/view/f$l;->k(Lio/flutter/view/f$l;)I

    move-result p3

    :goto_9c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object v0, Lio/flutter/view/f$g;->q:Lio/flutter/view/f$g;

    invoke-virtual {p3, p1, v0, p2}, Lr0/a;->c(ILio/flutter/view/f$g;Ljava/lang/Object;)V

    iget-object p3, p0, Lio/flutter/view/f;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/view/f$l;

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p3}, Lio/flutter/view/f$l;->j(Lio/flutter/view/f$l;I)I

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lio/flutter/view/f$l;->l(Lio/flutter/view/f$l;I)I

    return v5

    :sswitch_d1
    iget-object p2, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object p3, Lio/flutter/view/f$g;->s:Lio/flutter/view/f$g;

    invoke-virtual {p2, p1, p3}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    return v5

    :sswitch_d9
    iget-object p2, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object p3, Lio/flutter/view/f$g;->t:Lio/flutter/view/f$g;

    invoke-virtual {p2, p1, p3}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    return v5

    :sswitch_e1
    iget-object p2, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object p3, Lio/flutter/view/f$g;->r:Lio/flutter/view/f$g;

    invoke-virtual {p2, p1, p3}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    return v5

    :sswitch_e9
    sget-object p2, Lio/flutter/view/f$g;->k:Lio/flutter/view/f$g;

    invoke-static {v2, p2}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result p3

    if-eqz p3, :cond_f7

    :goto_f1
    iget-object p3, p0, Lio/flutter/view/f;->b:Lr0/a;

    invoke-virtual {p3, p1, p2}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    goto :goto_11a

    :cond_f7
    sget-object p2, Lio/flutter/view/f$g;->i:Lio/flutter/view/f$g;

    invoke-static {v2, p2}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result p3

    if-eqz p3, :cond_100

    goto :goto_f1

    :cond_100
    sget-object p2, Lio/flutter/view/f$g;->m:Lio/flutter/view/f$g;

    invoke-static {v2, p2}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result p3

    if-eqz p3, :cond_11b

    invoke-static {v2}, Lio/flutter/view/f$l;->H(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lio/flutter/view/f$l;->r(Lio/flutter/view/f$l;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lio/flutter/view/f$l;->I(Lio/flutter/view/f$l;)Ljava/util/List;

    move-result-object p3

    invoke-static {v2, p3}, Lio/flutter/view/f$l;->F(Lio/flutter/view/f$l;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0, p1, v4}, Lio/flutter/view/f;->R(II)V

    goto :goto_f1

    :goto_11a
    return v5

    :cond_11b
    return v3

    :sswitch_11c
    sget-object p2, Lio/flutter/view/f$g;->j:Lio/flutter/view/f$g;

    invoke-static {v2, p2}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result p3

    if-eqz p3, :cond_12a

    :goto_124
    iget-object p3, p0, Lio/flutter/view/f;->b:Lr0/a;

    invoke-virtual {p3, p1, p2}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    goto :goto_14d

    :cond_12a
    sget-object p2, Lio/flutter/view/f$g;->h:Lio/flutter/view/f$g;

    invoke-static {v2, p2}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result p3

    if-eqz p3, :cond_133

    goto :goto_124

    :cond_133
    sget-object p2, Lio/flutter/view/f$g;->l:Lio/flutter/view/f$g;

    invoke-static {v2, p2}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result p3

    if-eqz p3, :cond_14e

    invoke-static {v2}, Lio/flutter/view/f$l;->E(Lio/flutter/view/f$l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lio/flutter/view/f$l;->r(Lio/flutter/view/f$l;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lio/flutter/view/f$l;->G(Lio/flutter/view/f$l;)Ljava/util/List;

    move-result-object p3

    invoke-static {v2, p3}, Lio/flutter/view/f$l;->F(Lio/flutter/view/f$l;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {p0, p1, v4}, Lio/flutter/view/f;->R(II)V

    goto :goto_124

    :goto_14d
    return v5

    :cond_14e
    return v3

    :sswitch_14f
    invoke-direct {p0, v2, p1, p3, v3}, Lio/flutter/view/f;->N(Lio/flutter/view/f$l;ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1

    :sswitch_154
    invoke-direct {p0, v2, p1, p3, v5}, Lio/flutter/view/f;->N(Lio/flutter/view/f$l;ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1

    :sswitch_159
    iget-object p2, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    if-eqz p2, :cond_165

    invoke-static {p2}, Lio/flutter/view/f$l;->a(Lio/flutter/view/f$l;)I

    move-result p2

    if-ne p2, p1, :cond_165

    iput-object v1, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    :cond_165
    iget-object p2, p0, Lio/flutter/view/f;->j:Ljava/lang/Integer;

    if-eqz p2, :cond_171

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_171

    iput-object v1, p0, Lio/flutter/view/f;->j:Ljava/lang/Integer;

    :cond_171
    iget-object p2, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object p3, Lio/flutter/view/f$g;->v:Lio/flutter/view/f$g;

    invoke-virtual {p2, p1, p3}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    invoke-virtual {p0, p1, v0}, Lio/flutter/view/f;->R(II)V

    return v5

    :sswitch_17c
    iget-object p2, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    if-nez p2, :cond_185

    iget-object p2, p0, Lio/flutter/view/f;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_185
    iput-object v2, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    iget-object p2, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object p3, Lio/flutter/view/f$g;->u:Lio/flutter/view/f$g;

    invoke-virtual {p2, p1, p3}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    const p2, 0x8000

    invoke-virtual {p0, p1, p2}, Lio/flutter/view/f;->R(II)V

    sget-object p2, Lio/flutter/view/f$g;->l:Lio/flutter/view/f$g;

    invoke-static {v2, p2}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result p2

    if-nez p2, :cond_1a4

    sget-object p2, Lio/flutter/view/f$g;->m:Lio/flutter/view/f$g;

    invoke-static {v2, p2}, Lio/flutter/view/f$l;->o(Lio/flutter/view/f$l;Lio/flutter/view/f$g;)Z

    move-result p2

    if-eqz p2, :cond_1a7

    :cond_1a4
    invoke-virtual {p0, p1, v4}, Lio/flutter/view/f;->R(II)V

    :cond_1a7
    return v5

    :sswitch_1a8
    iget-object p2, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object p3, Lio/flutter/view/f$g;->g:Lio/flutter/view/f$g;

    invoke-virtual {p2, p1, p3}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    return v5

    :sswitch_1b0
    iget-object p2, p0, Lio/flutter/view/f;->b:Lr0/a;

    sget-object p3, Lio/flutter/view/f$g;->f:Lio/flutter/view/f$g;

    invoke-virtual {p2, p1, p3}, Lr0/a;->b(ILio/flutter/view/f$g;)V

    return v5

    :cond_1b8
    return v3

    nop

    :sswitch_data_1ba
    .sparse-switch
        0x10 -> :sswitch_1b0
        0x20 -> :sswitch_1a8
        0x40 -> :sswitch_17c
        0x80 -> :sswitch_159
        0x100 -> :sswitch_154
        0x200 -> :sswitch_14f
        0x1000 -> :sswitch_11c
        0x2000 -> :sswitch_e9
        0x4000 -> :sswitch_e1
        0x8000 -> :sswitch_d9
        0x10000 -> :sswitch_d1
        0x20000 -> :sswitch_5f
        0x100000 -> :sswitch_57
        0x200000 -> :sswitch_52
        0x1020036 -> :sswitch_4a
    .end sparse-switch
.end method

.method public w(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    iget-object v0, p0, Lio/flutter/view/f;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return v0

    :cond_a
    iget-object p2, p0, Lio/flutter/view/f;->d:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {p2, p1, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->getRecordFlutterId(Landroid/view/View;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_13

    return v0

    :cond_13
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-eq p2, p3, :cond_37

    const/16 p3, 0x80

    if-eq p2, p3, :cond_34

    const p3, 0x8000

    if-eq p2, p3, :cond_2f

    const/high16 p1, 0x10000

    if-eq p2, p1, :cond_2a

    goto :goto_3b

    :cond_2a
    iput-object v0, p0, Lio/flutter/view/f;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lio/flutter/view/f;->j:Ljava/lang/Integer;

    goto :goto_3b

    :cond_2f
    iput-object p1, p0, Lio/flutter/view/f;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lio/flutter/view/f;->i:Lio/flutter/view/f$l;

    goto :goto_3b

    :cond_34
    iput-object v0, p0, Lio/flutter/view/f;->o:Lio/flutter/view/f$l;

    goto :goto_3b

    :cond_37
    iput-object p1, p0, Lio/flutter/view/f;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lio/flutter/view/f;->m:Lio/flutter/view/f$l;

    :goto_3b
    const/4 p1, 0x1

    return p1
.end method
