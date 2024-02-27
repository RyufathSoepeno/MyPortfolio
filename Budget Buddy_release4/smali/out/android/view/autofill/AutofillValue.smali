.class public final synthetic Landroid/view/autofill/AutofillValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public static native synthetic forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param
.end method


# virtual methods
.method public native synthetic getTextValue()Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method
