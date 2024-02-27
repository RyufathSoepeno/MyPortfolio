.class Ld/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ld/i;


# direct methods
.method constructor <init>(Ld/i;)V
    .registers 2

    iput-object p1, p0, Ld/i$a;->e:Ld/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public x(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Ld/i$a;->e:Ld/i;

    invoke-virtual {v0, p1}, Ld/i;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
