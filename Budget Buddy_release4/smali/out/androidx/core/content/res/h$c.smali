.class Landroidx/core/content/res/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/content/res/ColorStateList;

.field final b:Landroid/content/res/Configuration;

.field final c:I


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/res/h$c;->a:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Landroidx/core/content/res/h$c;->b:Landroid/content/res/Configuration;

    if-nez p3, :cond_b

    const/4 p1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p3}, Landroid/content/res/Resources$Theme;->hashCode()I

    move-result p1

    :goto_f
    iput p1, p0, Landroidx/core/content/res/h$c;->c:I

    return-void
.end method
