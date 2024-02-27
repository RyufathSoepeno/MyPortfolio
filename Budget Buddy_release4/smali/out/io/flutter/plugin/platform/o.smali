.class Lio/flutter/plugin/platform/o;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/SurfaceTexture;

.field private l:Landroid/view/Surface;

.field private m:Lio/flutter/embedding/android/a;

.field n:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field private final o:Ljava/util/concurrent/atomic/AtomicLong;

.field private final p:Lio/flutter/view/r$a;

.field private q:Z

.field private final r:Lio/flutter/view/r$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lio/flutter/plugin/platform/o;->o:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Lio/flutter/plugin/platform/o$a;

    invoke-direct {p1, p0}, Lio/flutter/plugin/platform/o$a;-><init>(Lio/flutter/plugin/platform/o;)V

    iput-object p1, p0, Lio/flutter/plugin/platform/o;->p:Lio/flutter/view/r$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/plugin/platform/o;->q:Z

    new-instance v0, Lio/flutter/plugin/platform/o$b;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/o$b;-><init>(Lio/flutter/plugin/platform/o;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/o;->r:Lio/flutter/view/r$b;

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/view/r$c;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/o;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lio/flutter/plugin/platform/o;->p:Lio/flutter/view/r$a;

    invoke-interface {p2, p1}, Lio/flutter/view/r$c;->b(Lio/flutter/view/r$a;)V

    iget-object p1, p0, Lio/flutter/plugin/platform/o;->r:Lio/flutter/view/r$b;

    invoke-interface {p2, p1}, Lio/flutter/view/r$c;->a(Lio/flutter/view/r$b;)V

    invoke-interface {p2}, Lio/flutter/view/r$c;->c()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/o;->l(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/platform/o;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    iget-object p0, p0, Lio/flutter/plugin/platform/o;->o:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic b(Lio/flutter/plugin/platform/o;Z)Z
    .registers 2

    iput-boolean p1, p0, Lio/flutter/plugin/platform/o;->q:Z

    return p1
.end method

.method private f()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lio/flutter/plugin/platform/o;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :cond_b
    return-void
.end method

.method private g()V
    .registers 2

    iget-boolean v0, p0, Lio/flutter/plugin/platform/o;->q:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_b
    iget-object v0, p0, Lio/flutter/plugin/platform/o;->k:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Lio/flutter/plugin/platform/o;->c(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/platform/o;->q:Z

    :cond_16
    return-void
.end method

.method private n()Z
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lio/flutter/plugin/platform/o;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    return v1
.end method


# virtual methods
.method protected c(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;
    .registers 3

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lio/flutter/plugin/platform/o;->j:I

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    const-string v1, "PlatformViewWrapper"

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    const-string p1, "Platform view cannot be composed without a surface."

    :goto_b
    invoke-static {v1, p1}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "Invalid surface. The platform view cannot be displayed."

    goto :goto_b

    :cond_18
    iget-object p1, p0, Lio/flutter/plugin/platform/o;->k:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_4f

    invoke-static {p1}, Lio/flutter/plugin/platform/m;->a(Landroid/graphics/SurfaceTexture;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_4f

    :cond_23
    invoke-direct {p0}, Lio/flutter/plugin/platform/o;->n()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_47

    :cond_2d
    invoke-direct {p0}, Lio/flutter/plugin/platform/o;->g()V

    iget-object p1, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    invoke-static {p1}, Lio/flutter/plugin/platform/n;->a(Landroid/view/Surface;)Landroid/graphics/Canvas;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_37
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lio/flutter/plugin/platform/o;->f()V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_48

    iget-object v0, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :goto_47
    return-void

    :catchall_48
    move-exception v0

    iget-object v1, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    invoke-virtual {v1, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0

    :cond_4f
    :goto_4f
    const-string p1, "Invalid texture. The platform view cannot be displayed."

    goto :goto_b
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lio/flutter/plugin/platform/o;->i:I

    return v0
.end method

.method public h()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/o;->k:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    :cond_c
    return-void
.end method

.method public i(II)V
    .registers 4

    iput p1, p0, Lio/flutter/plugin/platform/o;->i:I

    iput p2, p0, Lio/flutter/plugin/platform/o;->j:I

    iget-object v0, p0, Lio/flutter/plugin/platform/o;->k:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_b
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public j(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, p0, Lio/flutter/plugin/platform/o;->g:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p1, p0, Lio/flutter/plugin/platform/o;->h:I

    return-void
.end method

.method public k(Landroid/view/View$OnFocusChangeListener;)V
    .registers 4

    invoke-virtual {p0}, Lio/flutter/plugin/platform/o;->o()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lio/flutter/plugin/platform/o;->n:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    if-nez v1, :cond_1b

    new-instance v1, Lio/flutter/plugin/platform/o$c;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugin/platform/o$c;-><init>(Lio/flutter/plugin/platform/o;Landroid/view/View$OnFocusChangeListener;)V

    iput-object v1, p0, Lio/flutter/plugin/platform/o;->n:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_1b
    return-void
.end method

.method public l(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    const-string p1, "PlatformViewWrapper"

    const-string v0, "Platform views cannot be displayed below API level 23. You can prevent this issue by setting `minSdkVersion: 23` in build.gradle."

    invoke-static {p1, v0}, Le0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iput-object p1, p0, Lio/flutter/plugin/platform/o;->k:Landroid/graphics/SurfaceTexture;

    iget v0, p0, Lio/flutter/plugin/platform/o;->i:I

    if-lez v0, :cond_1b

    iget v1, p0, Lio/flutter/plugin/platform/o;->j:I

    if-lez v1, :cond_1b

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_1b
    iget-object v0, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_22
    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/o;->c(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    invoke-static {p1}, Lio/flutter/plugin/platform/n;->a(Landroid/view/Surface;)Landroid/graphics/Canvas;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_2d
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0}, Lio/flutter/plugin/platform/o;->f()V
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_3b

    iget-object v0, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :catchall_3b
    move-exception v0

    iget-object v1, p0, Lio/flutter/plugin/platform/o;->l:Landroid/view/Surface;

    invoke-virtual {v1, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0
.end method

.method public m(Lio/flutter/embedding/android/a;)V
    .registers 2

    iput-object p1, p0, Lio/flutter/plugin/platform/o;->m:Lio/flutter/embedding/android/a;

    return-void
.end method

.method public o()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lio/flutter/plugin/platform/o;->n:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    if-eqz v1, :cond_14

    const/4 v2, 0x0

    iput-object v2, p0, Lio/flutter/plugin/platform/o;->n:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_14
    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lio/flutter/plugin/platform/o;->m:Lio/flutter/embedding/android/a;

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

    iget v1, p0, Lio/flutter/plugin/platform/o;->g:I

    int-to-float v1, v1

    iget v2, p0, Lio/flutter/plugin/platform/o;->h:I

    goto :goto_38

    :cond_1d
    iget v1, p0, Lio/flutter/plugin/platform/o;->e:I

    int-to-float v1, v1

    iget v2, p0, Lio/flutter/plugin/platform/o;->f:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v1, p0, Lio/flutter/plugin/platform/o;->g:I

    iput v1, p0, Lio/flutter/plugin/platform/o;->e:I

    iget v1, p0, Lio/flutter/plugin/platform/o;->h:I

    iput v1, p0, Lio/flutter/plugin/platform/o;->f:I

    goto :goto_3c

    :cond_2f
    iget v1, p0, Lio/flutter/plugin/platform/o;->g:I

    iput v1, p0, Lio/flutter/plugin/platform/o;->e:I

    iget v2, p0, Lio/flutter/plugin/platform/o;->h:I

    iput v2, p0, Lio/flutter/plugin/platform/o;->f:I

    int-to-float v1, v1

    :goto_38
    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_3c
    iget-object v1, p0, Lio/flutter/plugin/platform/o;->m:Lio/flutter/embedding/android/a;

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
