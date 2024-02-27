.class Lio/flutter/plugin/platform/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/w$b;
    }
.end annotation


# instance fields
.field a:Lio/flutter/plugin/platform/SingleViewPresentation;

.field private final b:Landroid/content/Context;

.field private final c:Lio/flutter/plugin/platform/a;

.field private final d:I

.field private final e:Lio/flutter/view/r$c;

.field private final f:Landroid/view/View$OnFocusChangeListener;

.field private final g:Landroid/view/Surface;

.field private h:Landroid/hardware/display/VirtualDisplay;

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lio/flutter/plugin/platform/a;Landroid/hardware/display/VirtualDisplay;Lio/flutter/plugin/platform/i;Landroid/view/Surface;Lio/flutter/view/r$c;Landroid/view/View$OnFocusChangeListener;ILjava/lang/Object;)V
    .registers 19

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lio/flutter/plugin/platform/w;->b:Landroid/content/Context;

    move-object v5, p2

    iput-object v5, v0, Lio/flutter/plugin/platform/w;->c:Lio/flutter/plugin/platform/a;

    move-object v1, p6

    iput-object v1, v0, Lio/flutter/plugin/platform/w;->e:Lio/flutter/view/r$c;

    move-object/from16 v7, p7

    iput-object v7, v0, Lio/flutter/plugin/platform/w;->f:Landroid/view/View$OnFocusChangeListener;

    move-object v1, p5

    iput-object v1, v0, Lio/flutter/plugin/platform/w;->g:Landroid/view/Surface;

    move-object v1, p3

    iput-object v1, v0, Lio/flutter/plugin/platform/w;->h:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Lio/flutter/plugin/platform/w;->d:I

    new-instance v8, Lio/flutter/plugin/platform/SingleViewPresentation;

    iget-object v1, v0, Lio/flutter/plugin/platform/w;->h:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    move-object v1, v8

    move-object v4, p4

    move/from16 v6, p8

    invoke-direct/range {v1 .. v7}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/i;Lio/flutter/plugin/platform/a;ILandroid/view/View$OnFocusChangeListener;)V

    iput-object v8, v0, Lio/flutter/plugin/platform/w;->a:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/flutter/plugin/platform/a;Lio/flutter/plugin/platform/i;Lio/flutter/view/r$c;IIILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)Lio/flutter/plugin/platform/w;
    .registers 29

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    const/4 v9, 0x0

    if-eqz v7, :cond_5d

    if-nez v8, :cond_11

    goto :goto_5d

    :cond_11
    invoke-interface/range {p3 .. p3}, Lio/flutter/view/r$c;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v15, Landroid/view/Surface;

    invoke-interface/range {p3 .. p3}, Lio/flutter/view/r$c;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v15, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const-string v0, "display"

    move-object/from16 v11, p0

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v6, 0x0

    const-string v1, "flutter-vd"

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v13

    if-nez v13, :cond_44

    return-object v9

    :cond_44
    new-instance v0, Lio/flutter/plugin/platform/w;

    move-object v10, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p8

    move/from16 v18, p6

    move-object/from16 v19, p7

    invoke-direct/range {v10 .. v19}, Lio/flutter/plugin/platform/w;-><init>(Landroid/content/Context;Lio/flutter/plugin/platform/a;Landroid/hardware/display/VirtualDisplay;Lio/flutter/plugin/platform/i;Landroid/view/Surface;Lio/flutter/view/r$c;Landroid/view/View$OnFocusChangeListener;ILjava/lang/Object;)V

    iput v7, v0, Lio/flutter/plugin/platform/w;->i:I

    iput v8, v0, Lio/flutter/plugin/platform/w;->j:I

    return-object v0

    :cond_5d
    :goto_5d
    return-object v9
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugin/platform/w;->a:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lio/flutter/plugin/platform/w;->j:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lio/flutter/plugin/platform/w;->i:I

    return v0
.end method

.method public e()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/platform/w;->a:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/i;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/plugin/platform/i;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/platform/w;->a:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/i;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Lio/flutter/plugin/platform/w;->a:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/i;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/plugin/platform/i;->f()V

    :cond_14
    :goto_14
    return-void
.end method

.method g()V
    .registers 2

    iget-object v0, p0, Lio/flutter/plugin/platform/w;->a:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/i;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Lio/flutter/plugin/platform/w;->a:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/i;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/plugin/platform/i;->b()V

    :cond_14
    :goto_14
    return-void
.end method

.method public h(IILjava/lang/Runnable;)V
    .registers 13

    invoke-virtual {p0}, Lio/flutter/plugin/platform/w;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    iget-object v0, p0, Lio/flutter/plugin/platform/w;->a:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->detachState()Lio/flutter/plugin/platform/SingleViewPresentation$e;

    move-result-object v8

    iget-object v0, p0, Lio/flutter/plugin/platform/w;->h:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lio/flutter/plugin/platform/w;->h:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    iput p1, p0, Lio/flutter/plugin/platform/w;->i:I

    iput p2, p0, Lio/flutter/plugin/platform/w;->j:I

    iget-object v0, p0, Lio/flutter/plugin/platform/w;->e:Lio/flutter/view/r$c;

    invoke-interface {v0}, Lio/flutter/view/r$c;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v0, p0, Lio/flutter/plugin/platform/w;->b:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v4, p0, Lio/flutter/plugin/platform/w;->d:I

    iget-object v5, p0, Lio/flutter/plugin/platform/w;->g:Landroid/view/Surface;

    const-string v1, "flutter-vd"

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/w;->h:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {p0}, Lio/flutter/plugin/platform/w;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/flutter/plugin/platform/w$a;

    invoke-direct {v1, p0, v0, p3}, Lio/flutter/plugin/platform/w$a;-><init>(Lio/flutter/plugin/platform/w;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Lio/flutter/plugin/platform/SingleViewPresentation;

    iget-object v2, p0, Lio/flutter/plugin/platform/w;->b:Landroid/content/Context;

    iget-object v1, p0, Lio/flutter/plugin/platform/w;->h:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lio/flutter/plugin/platform/w;->c:Lio/flutter/plugin/platform/a;

    iget-object v6, p0, Lio/flutter/plugin/platform/w;->f:Landroid/view/View$OnFocusChangeListener;

    move-object v1, v0

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/a;Lio/flutter/plugin/platform/SingleViewPresentation$e;Landroid/view/View$OnFocusChangeListener;Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lio/flutter/plugin/platform/w;->a:Lio/flutter/plugin/platform/SingleViewPresentation;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    iput-object v0, p0, Lio/flutter/plugin/platform/w;->a:Lio/flutter/plugin/platform/SingleViewPresentation;

    return-void
.end method
