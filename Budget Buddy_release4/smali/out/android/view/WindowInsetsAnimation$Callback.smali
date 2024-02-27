.class public synthetic Landroid/view/WindowInsetsAnimation$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native synthetic onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .param p1    # Landroid/view/WindowInsetsAnimation;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsetsAnimation$Bounds;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end method
