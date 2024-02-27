.class public Li0/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private e:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Lio/flutter/embedding/android/a;

.field l:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;FLio/flutter/embedding/android/a;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p2, p0, Li0/a;->f:F

    iput-object p3, p0, Li0/a;->k:Lio/flutter/embedding/android/a;

    return-void
.end method

.method private getPlatformViewMatrix()Landroid/graphics/Matrix;
    .registers 5

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Li0/a;->e:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->getFinalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget v1, p0, Li0/a;->f:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget v1, p0, Li0/a;->g:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Li0/a;->h:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method


# virtual methods
.method public a(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;IIII)V
    .registers 6

    iput-object p1, p0, Li0/a;->e:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    iput p2, p0, Li0/a;->g:I

    iput p3, p0, Li0/a;->h:I

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public b()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Li0/a;->l:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    if-eqz v1, :cond_14

    const/4 v2, 0x0

    iput-object v2, p0, Li0/a;->l:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_14
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Li0/a;->getPlatformViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Li0/a;->e:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->getFinalClippingPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iget v1, p0, Li0/a;->g:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Li0/a;->h:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->offset(FF)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_d

    :cond_2d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Li0/a;->k:Lio/flutter/embedding/android/a;

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    iget v1, p0, Li0/a;->g:I

    int-to-float v1, v1

    iget v2, p0, Li0/a;->h:I

    goto :goto_38

    :cond_1d
    iget v1, p0, Li0/a;->i:I

    int-to-float v1, v1

    iget v2, p0, Li0/a;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v1, p0, Li0/a;->g:I

    iput v1, p0, Li0/a;->i:I

    iget v1, p0, Li0/a;->h:I

    iput v1, p0, Li0/a;->j:I

    goto :goto_3c

    :cond_2f
    iget v1, p0, Li0/a;->g:I

    iput v1, p0, Li0/a;->i:I

    iget v2, p0, Li0/a;->h:I

    iput v2, p0, Li0/a;->j:I

    int-to-float v1, v1

    :goto_38
    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_3c
    iget-object v1, p0, Li0/a;->k:Lio/flutter/embedding/android/a;

    invoke-virtual {v1, p1, v0}, Lio/flutter/embedding/android/a;->g(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnDescendantFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 4

    invoke-virtual {p0}, Li0/a;->b()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Li0/a;->l:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    if-nez v1, :cond_1b

    new-instance v1, Li0/a$a;

    invoke-direct {v1, p0, p1, p0}, Li0/a$a;-><init>(Li0/a;Landroid/view/View$OnFocusChangeListener;Landroid/view/View;)V

    iput-object v1, p0, Li0/a;->l:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_1b
    return-void
.end method
