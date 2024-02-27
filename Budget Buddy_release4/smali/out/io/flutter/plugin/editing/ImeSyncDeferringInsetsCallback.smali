.class Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;,
        Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$c;,
        Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;
    }
.end annotation


# instance fields
.field private animating:Z

.field private animationCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;

.field private final deferredInsetTypes:I

.field private imeVisibleListener:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;

.field private insetsListener:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$c;

.field private lastWindowInsets:Landroid/view/WindowInsets;

.field private needsSave:Z

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    iput v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->deferredInsetTypes:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animating:Z

    iput-boolean v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->needsSave:Z

    iput-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    new-instance p1, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;

    invoke-direct {p1, p0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;-><init>(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)V

    iput-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animationCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;

    new-instance p1, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$c;-><init>(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$a;)V

    iput-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->insetsListener:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$c;

    return-void
.end method

.method static synthetic access$100(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Z
    .registers 1

    iget-boolean p0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->needsSave:Z

    return p0
.end method

.method static synthetic access$102(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->needsSave:Z

    return p1
.end method

.method static synthetic access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I
    .registers 1

    iget p0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->deferredInsetTypes:I

    return p0
.end method

.method static synthetic access$300(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Z
    .registers 1

    iget-boolean p0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animating:Z

    return p0
.end method

.method static synthetic access$302(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animating:Z

    return p1
.end method

.method static synthetic access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;
    .registers 1

    iget-object p0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->imeVisibleListener:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;

    return-object p0
.end method

.method static synthetic access$600(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/WindowInsets;
    .registers 1

    iget-object p0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->lastWindowInsets:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static synthetic access$602(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 2

    iput-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->lastWindowInsets:Landroid/view/WindowInsets;

    return-object p1
.end method


# virtual methods
.method getAnimationCallback()Landroid/view/WindowInsetsAnimation$Callback;
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animationCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;

    return-object v0
.end method

.method getImeVisibleListener()Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->imeVisibleListener:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;

    return-object v0
.end method

.method getInsetsListener()Landroid/view/View$OnApplyWindowInsetsListener;
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->insetsListener:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$c;

    return-object v0
.end method

.method install()V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    iget-object v1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->animationCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/b;->a(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    iget-object v1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->insetsListener:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method remove()V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/b;->a(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method setImeVisibleListener(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->imeVisibleListener:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;

    return-void
.end method
