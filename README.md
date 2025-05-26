# # 🎓 OGSkillStake - Stake on Talent, Empower the Future

OGSkillStake is a decentralized smart contract protocol that allows investors to stake funds in rising talent (creators, students, developers, etc.), with funds being released *only* when predefined, verifiable **milestones** are achieved. This incentivizes performance, builds trust, and creates a win-win path for both talent and supporters.

---

## 🚀 What Problem Does It Solve?

### 🌱 For Talents (e.g., students, creators, freelancers):
- Getting funding for skill development or creative work is hard without reputation or a track record.
- Loans are risky and can create pressure without ensuring delivery.

### 💰 For Investors or Supporters:
- Supporting someone’s journey is noble, but risky if there’s no guarantee of progress or accountability.
- No existing platform allows verifiable, milestone-based funding tied to success metrics.

> **OGSkillStake solves this by allowing conditional funding** — funds are released *only when* the talent completes specific goals (milestones), verified by a trusted approver (could be DAO, mentor, or platform admin).

---

## 🔍 Features

### 🎯 Milestone-Based Fund Release
- Talent sets up key milestones with target amounts.
- Funds are released only after approver marks a milestone as completed.

### 🙌 Supporters Can Stake Anytime
- Anyone can fund a talent’s journey by staking ETH.
- Creates a decentralized micro-investment platform for skill-building.

### ✅ Third-Party Verification
- A designated **approver** (could be DAO, teacher, platform, etc.) verifies milestone completion.
- Prevents misuse and builds trust.

### 🔐 Secure & Transparent
- All fund flow is on-chain.
- Investors can track milestone progress transparently.

---

## 🛠️ Smart Contract Architecture

### Roles:
- `Talent`: The person whose journey is being funded.
- `Investor`: Anyone sending ETH to support the talent.
- `Approver`: Trusted entity who verifies milestone completion.

### Core Functions:
| Function | Description |
|---------|-------------|
| `initialize()` | Sets up the talent, milestone goals, and required ETH per milestone. |
| `stake()` | Investors send ETH to support the talent. |
| `verifyMilestone(index)` | Approver marks a milestone as completed. |
| `claimMilestone(index)` | Talent claims ETH for completed milestone. |
| `getMilestones()` | Returns all milestone data for UI/front-end. |

---

## 🧪 How to Test Locally

### Prerequisites
- Node.js & npm
- Hardhat (recommended) or Remix IDE
- Metamask wallet for testnets (Goerli, Sepolia)
  
![image](https://github.com/user-attachments/assets/e7ae2fbd-819b-4b4b-9da7-40c7d79b9e03)

### Deployment (Hardhat)

```bash
git clone https://github.com/your-repo/ogskillstake.git
cd ogskillstake
npm install
npx hardhat compile



