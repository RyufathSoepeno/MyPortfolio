.class final Landroidx/core/provider/f$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Landroid/graphics/Typeface;

.field final b:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/provider/f$e;->a:Landroid/graphics/Typeface;

    iput p1, p0, Landroidx/core/provider/f$e;->b:I

    return-void
.end method

.method constructor <init>(Landroid/graphics/Typeface;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/f$e;->a:Landroid/graphics/Typeface;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/core/provider/f$e;->b:I

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    iget v0, p0, Landroidx/core/provider/f$e;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
