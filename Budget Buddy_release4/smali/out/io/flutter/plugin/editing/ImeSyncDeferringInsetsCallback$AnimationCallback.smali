.class Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$300(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result p1

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$302(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Z)Z

    iget-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {p1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$600(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {p1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {p1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$600(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_3a
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$102(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Z)Z

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result p1

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_18

    iget-object p1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {p1, v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$302(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;Z)Z

    :cond_18
    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$300(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$100(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_8a

    :cond_12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v2}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v2

    iget-object v3, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v3}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    const/4 v1, 0x1

    goto :goto_18

    :cond_33
    if-nez v1, :cond_36

    return-object p1

    :cond_36
    iget-object p2, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {p2}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p2

    and-int/lit16 v1, p2, 0x200

    if-nez v1, :cond_53

    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_53

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/view/u1;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    goto :goto_54

    :cond_53
    const/4 p2, 0x0

    :goto_54
    new-instance v1, Landroid/view/WindowInsets$Builder;

    iget-object v2, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v2}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$600(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    iget-object v2, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v2}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/core/view/u1;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v2, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, v0, v0, p2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p2

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$200(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)I

    move-result v0

    invoke-static {v1, v0, p2}, Lio/flutter/plugin/editing/c;->a(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    iget-object p2, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {p2}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v1}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_8a
    :goto_8a
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 5

    iget-object v0, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$400(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/h0;->p(Landroid/view/View;)Landroidx/core/view/m1;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$500(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-static {}, Landroidx/core/view/m1$m;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/m1;->o(I)Z

    move-result v0

    iget-object v1, p0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$AnimationCallback;->this$0:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-static {v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->access$500(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;)Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$b;->a(Z)V

    :cond_25
    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p1

    return-object p1
.end method
