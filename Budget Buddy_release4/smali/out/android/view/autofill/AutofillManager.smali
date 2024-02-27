.class public final synthetic Landroid/view/autofill/AutofillManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method


# virtual methods
.method public native synthetic cancel()V
.end method

.method public native synthetic commit()V
.end method

.method public native synthetic notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
.end method

.method public native synthetic notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public native synthetic notifyViewExited(Landroid/view/View;I)V
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
.end method
